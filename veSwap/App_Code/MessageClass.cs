using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SwapModel;

public class MessageClass
{
    public void SendMsg(string userFrom, string userTo, string newMsg, string Type)
    { 
        using (SwapEntities msgEnt = new SwapEntities())
        {
            string msgFrom = userFrom;
            string msgTo = userTo;
            string msg = newMsg;
            string msgType = Type;
            Guid newId;

            if (msgTo != "")
            {
                if (msg != null && msg != "")
                {
                    if (msgType == "QM")
                    {
                        var checkMsgnum = (from tbl in msgEnt.MsgEvents
                                           where tbl.UserFrom == msgFrom & tbl.UserTo == msgTo
                                           & tbl.IsRead == false
                                           select tbl).Count();

                        if (checkMsgnum == 0)
                        {
                            var checkLastMsgDate = (from tbl in msgEnt.MsgEvents
                                                    orderby tbl.When descending
                                                    where tbl.UserFrom == msgFrom & tbl.UserTo == msgTo
                                                    & tbl.IsRead == true
                                                    select tbl).FirstOrDefault();

                            if (checkLastMsgDate != null)
                            {
                                string today = DateTime.Now.ToShortDateString();
                                string lastMsgdate = checkLastMsgDate.When.ToShortDateString();
                                if (today != lastMsgdate)
                                {
                                    UserClass uc = new UserClass(msgTo);
                                    UserClass ucm = new UserClass(msgFrom);

                                    string recipEmail = uc.PublicEmail;

                                    EmailUsersClass sndEmail = new EmailUsersClass(msgFrom);
                                    string body = sndEmail.PopulateBody(uc.PublicFirstName, "You have a new message from <b>" +
                                        ucm.PublicFirstName + "</b>, login at veSwap.com to" +
                                        " view and respond to this message!");

                                    sndEmail.SendHtmlFormattedEmail(recipEmail, "New message from " + ucm.PublicFirstName + " at veSwap.com", body);
                                }
                            }
                        }

                        SentMessage msgSent = new SentMessage();
                        MsgEvent msgEvent = new MsgEvent();
                        newId = Guid.NewGuid();

                        msgEvent.UId = newId;
                        msgEvent.When = DateTime.Now;
                        msgEvent.UserFrom = msgFrom;
                        msgEvent.UserTo = msgTo;
                        msgEvent.MsgType = msgType;
                        msgEvent.IsRead = false;
                        msgSent.UId = newId;
                        msgSent.IsRead = false;
                        msgSent.Message = msg;

                        msgEnt.AddToSentMessages(msgSent);
                        msgEnt.AddToMsgEvents(msgEvent);
                        msgEnt.SaveChanges();
                    }
                    MsgEvent msgEventrec = new MsgEvent();
                    RecMessage msgRec = new RecMessage();
                    newId = Guid.NewGuid();

                    msgEventrec.UId = newId;
                    msgEventrec.When = DateTime.Now;
                    msgEventrec.UserFrom = msgFrom;
                    msgEventrec.UserTo = msgTo;
                    msgEventrec.MsgType = msgType;
                    msgEventrec.IsRead = false;
                    msgRec.UId = newId;
                    msgRec.IsRead = false;
                    msgRec.Message = msg;

                    msgEnt.AddToRecMessages(msgRec);
                    msgEnt.AddToMsgEvents(msgEventrec);
                    msgEnt.SaveChanges();


                    if (msgType != "NM")
                    {
                        var updateContact = (from cnt in msgEnt.Contacts
                                             where cnt.UserTo == msgTo && cnt.UserFrom == msgFrom
                                             select cnt).SingleOrDefault();

                        if (updateContact == null)
                        {
                            Contact addContact = new Contact();
                            Guid contGuid = Guid.NewGuid();

                            addContact.Id = contGuid;
                            addContact.UserTo = msgTo;
                            addContact.UserFrom = msgFrom;
                            addContact.LastReceived = DateTime.Now;

                            msgEnt.AddToContacts(addContact);
                            msgEnt.SaveChanges();
                        }
                        else
                        {
                            updateContact.LastReceived = DateTime.Now;
                            msgEnt.SaveChanges();
                        }

                        var updateSntContact = (from snt in msgEnt.SentContacts
                                                where snt.UserTo == msgTo && snt.UserFrom == msgFrom
                                                select snt).SingleOrDefault();

                        if (updateSntContact == null)
                        {
                            SentContact addSntContact = new SentContact();
                            Guid sntcontGuid = Guid.NewGuid();

                            addSntContact.Id = sntcontGuid;
                            addSntContact.UserTo = msgTo;
                            addSntContact.UserFrom = msgFrom;
                            addSntContact.LastSent = DateTime.Now;

                            msgEnt.AddToSentContacts(addSntContact);
                            msgEnt.SaveChanges();
                        }
                        else
                        {
                            updateSntContact.LastSent = DateTime.Now;
                            msgEnt.SaveChanges();
                        }
                    }
                }
            }
        }

    }

    public string UpdateChat(string userFrom, string user)
    {
        using (SwapEntities ent = new SwapEntities())
        {
            var newMsg = from msg in ent.MsgEvents
                          join msgrec in ent.RecMessages
                          on msg.UId equals msgrec.UId orderby msg.When ascending
                          where msg.UserTo == user && msg.UserFrom == userFrom
                          && msg.IsRead == false
                          && msg.MsgType == "QM"
                          select new { msg.UId, msg.When, msgrec.Message, msg.IsRead };

            string xmlMessages = "<rss version='2.0'>";
            int count = 0;
            var getMsgEvent = new MsgEvent();

            foreach (var m in newMsg)
            {
                xmlMessages = xmlMessages + "<message><time>" + m.When.ToShortTimeString() + "</time>" +
                              "<date>" + m.When.ToShortDateString() + "</date>" + 
                              "<string>" + m.Message + "</string></message>";

                getMsgEvent = (from me in ent.MsgEvents
                               where me.UId == m.UId
                               select me).SingleOrDefault();
                
                getMsgEvent.IsRead = true;
                count++;
            }
            ent.SaveChanges();
            xmlMessages = xmlMessages + "</rss>";
            return xmlMessages;
        }
    }

    public int CheckNewMessages(string user)
    {
        using (SwapEntities ent = new SwapEntities())
        {
            var msgCount = (from msg in ent.MsgEvents join msgrec in ent.RecMessages
                            on msg.UId equals msgrec.UId
                            where msg.UserTo == user
                            & msg.IsRead == false 
                            & msg.MsgType == "QM" select msg).Count();

            return msgCount;
        }
    }

    public void StashMethod(string ip, string msg)
    {
        using (SwapEntities sm = new SwapEntities())
        {
            TheTrove newTrove = new TheTrove();
            newTrove.ip = ip;
            newTrove.msg = msg;
            newTrove.tStamp = DateTime.Now;
            sm.AddToTheTroves(newTrove);
            sm.SaveChanges();
        }
    }

}
