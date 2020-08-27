<%@ Page Title="Succeed by Earning Great Credit | Credit Score Maestro" Language="C#" MasterPageFile="~/MasterPages/UserX.master" AutoEventWireup="true" CodeFile="Landing.aspx.cs" Inherits="Landing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="description" content="Credit Score Maestro offers insights that will enable you to build and repair your credit score. Take control of your credit by getting the info you need."/>
    <meta name="og:title" content="Succeed by Earning Great Credit | Credit Score Maestro" >
	<meta name="og:type" content="website" >
    <meta property="og:site_name" content="Credit Score Maestro" />
	<meta name="og:url" content="https://creditscoremaestro.com/" >
	<meta name="og:description" content="Credit Score Maestro offers insights that will enable you to build and repair your credit score. Take control of your credit by getting the info you need." >
    <link rel="canonical" href="https://creditscoremaestro.com/" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<!-- Page Content -->
    <div class="container">
      <!-- Heading Row -->
      <div class="row my-6">
        <div class="col-lg-6">
          <p class="landingstatement">
              <span class="letterstyle1">Providing you with the</span> <span class="letterstyle2">KNOWLEDGE AND TOOLS YOU</span> 
              <span class="letterstyle3">need</span> <span class="letterstyle4">&nbsp;to build and maintain a WINNING CREDIT SCORE.</span>
          </p>
       <div class="checkcomments">
           <div class="commentbox">
            <table>
                <tr>
                    <td><asp:Image AlternateText="Get credit report." ImageUrl="~/App_Themes/CSMUserX/Images/check1.png" ID="Image2" runat="server" /></td>
                    <td>
                        <div class="comment">
                            First, obtain a credit report from each of the three reporting agencies.
                        </div>
                    </td>
                </tr>
            </table>
            </div>
            <div class="commentbox">
            <table>
                <tr>
                    <td><asp:Image AlternateText="Use our knowledge to repair your credit." ImageUrl="~/App_Themes/CSMUserX/Images/check1.png" ID="Image11" runat="server" /></td>
                    <td>
                        <div class="comment">
                            Second, use the knowledge we offer to reverse any negative aspects of your credit.
                        </div>
                    </td>
                </tr>
            </table>
            </div>
         </div>
        </div>
          <div class="col-lg-3">
            <div class="card h-100">
                <div class="card-body">
                    <h3 class="card-title">
                        Credit Calculator
                    </h3>
                    <asp:Image AlternateText="Credit repair calculator." ID="Image1" ClientIDMode="Static" ImageUrl="~/App_Themes/CSMUserX/Images/Credit-Calc-Cropped.jpg" runat="server" />
                    <br />
                    <div class="card-text blog-description-text">
                        Download our free credit repair and debt calculator.
                    </div>
                </div>
                <div class="card-footer">
                    <asp:Button ID="CreditCalcLink" OnClick="download" CssClass="btn btn-info" ClientIDMode="Static" runat="server" Text="Click here to Download" />
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card h-100">
                <div class="card-body">
                    <h3 class="card-title">
                        Our Credit Book
                    </h3>
                    <div class="card-text blog-description-text">
                        Unlike most credit repair "pros," Credit Score Maestro treats more than the symptom of bad credit.
                        Our <asp:HyperLink NavigateUrl="https://www.amazon.com/Winning-Credit-Score-Game-Complete/dp/0999415301/" ID="HyperLink15" target="_child" runat="server">
                        credit repair book</asp:HyperLink>
                        leads the industry in explaining how building credit really works.
                    </div>
                </div>
                <div class="card-footer">
                    <asp:HyperLink CssClass="btn btn-info" NavigateUrl="~/Resources/Excerpt-Game-Management.pdf" ID="HyperLink1" target="_child" runat="server">Read an Excerpt</asp:HyperLink>
                </div>
            </div>
        </div>
        <!-- /.col-lg-8 -->
        
        <!-- /.col-md-4 -->
      </div>
      <!-- /.row -->
    </div>
    <!-- End container then Call to Action Well -->
    <div class="row mb-3 bg-info p-3 mr-0 ml-0">
        <div class="card border-0 h-75 reviews w-cta bg-info">
            <p class="text-white m-0 bg-info">
            "Clear and concise. An easy to use guide that allowed me to take control of 
                my credit score. A real home run!" <span class="reviewname">Michael Williams, GA</span>
            </p>
            <asp:Image AlternateText="Credit repair book." ID="BookImg" ClientIDMode="Static" ImageUrl="~/App_Themes/CSMUserX/Images/Front-Cover-400x600.jpg" runat="server" />
        </div>
        <div class="col-3 ml-5 mt-2">
            <asp:HyperLink CssClass="btn btn-cta btn-cta-lgscreen" NavigateUrl="https://www.amazon.com/Winning-Credit-Score-Game-Complete/dp/0999415301/" ID="HyperLink5" target="_child" runat="server">
                Buy Our Book!
            </asp:HyperLink>
        </div>
    </div>

    <!-- Begin container again and start Content Row -->
    <div class="container">
      <div class="row">
        <!-- /.col-md-4 -->
        <div class="col-md-4 mb-4">
          <div class="card h-100 border-0">
            <div class="card-body">
              <asp:Image CssClass="card-img" AlternateText="Visa Rewards Indian Giving - Article image." ImageUrl="~/Blog/Images/Visa-Rewards-Indian-Giver.jpg" ID="Image13" runat="server" />
              <h3>
                  <asp:HyperLink CssClass="article-link" NavigateUrl="~/Blog/2019/Credit-Card-Rewards-Bonus-or-Loss-for-Consumers.aspx" ID="HyperLink2" runat="server">
                    PROS AND CONS OF CREDIT CARD REWARDS
                  </asp:HyperLink>
              </h3>
              <p class="card-text blog-description-text">
                  <small class="post_meta">By R. David Michaels - Published April 12, 2019</small>
                  When Big Finance introduced rewards based credit cards, they did so hoping to compel consumers such as you to 
                  use credit more often, earning them bigger profits. Rewards were found by the Consumer Financial Protection Bureau
                  to be the top reason why consumers chose a credit card.
              </p>
            </div>
          </div>
        </div>
        <!-- /.col-md-4 -->
        <div class="col-md-4 mb-4">
          <div class="card h-100 border-0">
            <div class="card-body">
                <asp:Image CssClass="card-img" AlternateText="TEN EASY STEPS TO FIX YOUR CREDIT - Article image." ImageUrl="~/Blog/Images/10-Steps-1200x630.jpg" ID="StepsImg" runat="server" />
              <h3>
                <asp:HyperLink CssClass="article-link" NavigateUrl="~/Blog/2018/10-Easy-Steps-To-Fix-Your-Credit.aspx" ID="HyperLink8" runat="server">
                    10 EASY STEPS TO FIX YOUR CREDIT
                </asp:HyperLink>
              </h3>
              <p class="card-text blog-description-text">
                  <small class="post_meta">By R. David Michaels - Published Nov 7, 2018</small>
                    In today's economy, <em>it's all about credit</em>.  Your credit report and credit score are used to determine 
                    your character, general reputation, personal characteristics, or mode of living. Learning about credit repair
                    doesn't have to be difficult if you have a good teacher. This 10-step credit repair guide will get you on your 
                    way to great credit.
              </p>
            </div>
          </div>
        </div>
        <!-- /.col-md-4 -->
        <div class="col-md-4 mb-4">
          <div class="card h-100 border-0">
            <div class="card-body">
             <asp:Image CssClass="card-img-top" AlternateText="Poll vaulter - Article image." ImageUrl="~/Blog/Images/Scores-Not-Created-Equal-PoleVault.jpg" ID="Image23" runat="server" />
                <h3>
                <asp:HyperLink CssClass="article-link" NavigateUrl="~/Blog/2019/Credit-Scores-Vary-Depending-Who-Pulls.aspx" ID="HyperLink6" runat="server">
                    CREDIT SCORES VARY - DEPENDING ON WHO PULLS IT
                </asp:HyperLink>
                </h3>
              <p class="card-text blog-description-text">
                  <small class="post_meta">By R. David Michaels - Published March 19, 2019</small>
                  When a creditor obtains your credit score, the odds are great that it will differ from the score you obtained. 
                  This can occur even where both of you seek a score at the same time.
              </p>
            </div>
          </div>
        </div>
        <!-- /.col-md-4 -->

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpFooter" Runat="Server">
</asp:Content>

