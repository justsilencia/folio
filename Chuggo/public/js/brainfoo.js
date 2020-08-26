

// const orderedCount = s =>
//   Array.from(s.split('').reduce((m, k) => m.set(k, m.has(k) ? m.get(k) + 1 : 1), new Map()));

// const orderedCount = s => {
//     return Array.from(s.split('').reduce((m, k) => {
//         console.log(m);
//         return m.set(k, m.has(k) ? m.get(k) + 1 : 1);
//     }, new Map()));
// }
// console.log(orderedCount('abracadabra'));



// ________________________________________________________
// Function which adds extra parameter to event callback. 
// Curried function allows easy inclusion of an extra parameter 'field'.

// var funky = field => e => {
//     e.preventDefault();
//     console.log(event);
//     console.log(field);
// }

// $('#lick').on('click', funky('jkl'));
//_________________________________________________________

// async/await function example

// function delay2sec() {
//     return new Promise(resolve => {
//         setTimeout(() => {
//             resolve('resolved');
//         }, 2000)
//     });
// }

// async function asyncCall() {
//     console.log('calling...');
//     var result = await delay2sec();
//     console.log(result);
// }

// asyncCall();

//______________________________________________________
// promise example
// Pretend these are XHR for fetch requests...
// var api1 = new Promise(res => {
//     setTimeout(() => {
//         res('api 1 resolved...');
//     }, 3000);
// });

// var api2 = new Promise(res => {
//     setTimeout(() => {
//         res('api 2 resolved...');
//     }, 3000);
// });

// api1.then(function(val) {
//     console.log(val);
//     return api2;
// }).then(function(val) {
//     console.log('do something between api calls');
//     return val;
// }).then(function(val) {
//     console.log(val);
// }).then(function() {
//     console.log('and we are done...');
// }).then(function() {
//     console.log('for now...');
// });

// Callback equivalent of promises attempted...
// function fetchData1() {
//     setTimeout(() => {
//         console.log('api 1 resolved...');
//     }, 3000);
// }

// function synctask() {
//     console.log("Synchronous task between api calls won't work...")
// }

// function fetchData2() {
//     setTimeout(() => {
//         console.log('api 2 resolved...');
//     }, 3000);
// }

// fetchData1();
// synctask();
// fetchData2();



// Example mimicking error with fetch api for reviwa

// async function getData() {
//     const fetch = new Promise(res => {
//         setTimeout(() => {
//             res('api 1 resolved...');
//         }, 3000);
//     });
//     const data = await fetch.then(val => console.log(val));
//     return data;
// }
// getData();
// console.log('fetching...');


// function resolveAfter2Seconds() {
//     return new Promise(resolve => {
//       setTimeout(() => {
//         resolve('resolved');
//       }, 2000);
//     });
//   }
//  async function asyncCall() {
//     console.log('calling');
//     var result = await resolveAfter2Seconds();
//     console.log(result);
//     // expected output: 'resolved'
//   }
  
//   asyncCall();
//   console.log('go ahead...');

// $(function($) {
//   $('img.lazy').Lazy({
//     scrollDirection: 'vertical',
//     effect: 'fadeIn',
//     visibleOnly: true
//   });
// });

// Random number up to 10
// var randomize = Math.random() * 10;

// console.log(randomize);

// Javascript in itself is NOT asynchronous!!!!
//const arr = [];

// for (i=0; i<=10; i++) {
//     arr[i] = {
//         unit: i,
//         name: 'joe'
//     };
// }

// var tester = arr.map(item => {
//     item.name = item.name.replace('j', 'h');
//     return item;
// })

// console.log(tester);

// function consumer(arr, consumeFunc) {
//     for(i=0; i<arr.length;i++) {
//         consumeFunc(arr[i]);
//     }
// }

// consumer(arr, function(arrayEl) {
//     setTimeout(function() {
//         console.log(arrayEl);
//     }, 0)
// });

// console.log('leter go');

// const users = ['Anna', 'Jack', 'Paul', 'Elena']
// const additionalData = ['data1', 'data2', 'data3', 'data4', 'data5']

// const testObj = users.map((item, i) => {return { user: item, keywor: additionalData[i]}});
// console.log(testObj);

// const buttons = ['Home', 'Docs', 'About-Us'];

// @keyframes fadein {
//     from { opacity: 0; }
//     to   { opacity: 1; }
// }

// .test {
//     opacity: 0;
//     animation: fadein 1s;
//     animation-delay: 20ms;
//     animation-fill-mode: forwards;
//   }

// const myObj = {
//     b: 1,
//     c: 2,
//     a: 3
// }
// var myObj2 = {
//     b: 1,
//     c: 2,
//     a: 3
// }
// console.log(Object.entries(myObj2));


// const json = '{"foo":"bar","items":[{"id":1,"items":[{"id":50,"content":"test"}]},{"id":2,"items":[{"id":70,"content":"test"},{"id":85,"content":"test"}]}]}';

// console.log(JSON.parse(json, (key, value) => Array.isArray(value)
//     ? Object.assign({}, value)
//     : value
// ));

// let obj = {
//     myVar: 'foo',
    
//     myFunc: function() {
//       console.log(this.myVar)
//     }
//   }
//   obj.myFunc() // foo

// Conver string literal array to array.
// const test = "['me', 'you]";
// const array = JSON.parse(test.replace(/'/g, '"'))

// console.log(array);



// START OF CODE FOR PRACTICING RANGE MANIPULATION, SPECIFICALLY FOR MODIFYING
// THE JQUERY EMOJIAREA PLUGIN.
// var editDiv = document.getElementById('editme');
// editDiv.addEventListener('keyup', (e) => {
//     if (e.keyCode === 32) {
//         console.log(editDiv.innerHTML)
//     }
// })
// var boldText = document.createElement('b');
// var space = document.createElement('span');

// boldText.innerHTML = 'foobar';
// space.innerHTML = "\u200B";

// var range = document.createRange();
// var sel = window.getSelection();

// range.setStart(editDiv, 0);
// range.insertNode(space);
// range.insertNode(boldText);
// range.collapse(false);

// sel.removeAllRanges();
// sel.addRange(range);



// function getCaretCharacterOffsetWithin(element) {
//     var caretOffset = 0;

//     if (typeof window.getSelection != "undefined") {
//         // Get the range at the current selection (where the cursor is position).
//         // This gives the offset of how many characters have been input.
//         var range = window.getSelection().getRangeAt(0);

//         // Clone the range and stor in preCaretRange variable.
//         var preCaretRange = range.cloneRange();

//         // These methods appear to ensure that the range end, even with additional
//         // html elements, is set to the end.
//         // NEED TO VALIDATE
//         preCaretRange.selectNodeContents(element);
//         preCaretRange.setEnd(range.endContainer, range.endOffset);

//         // This actually sets the offset for where the cursor is currently located,
//         // thereby enabling me to get the current word with the getWordat method.
       
//         caretOffset = preCaretRange.toString().length;

//     } else if (typeof document.selection != "undefined" && document.selection.type != "Control") {
//         var textRange = document.selection.createRange();
//         var preCaretTextRange = document.body.createTextRange();
//         preCaretTextRange.moveToElementText(element);
//         preCaretTextRange.setEndPoint("EndToEnd", textRange);
//         caretOffset = preCaretTextRange.text.length;
//     }
    
//     return caretOffset;
//   }
  
//   // From: http://stackoverflow.com/questions/5173316/finding-the-word-at-a-position-in-javascript
//   function getWordAt(str, pos) {
  
//     // Perform type conversions.
//     str = String(str);
//     pos = Number(pos);
  
//     // Search for the word's beginning and end.
//     var left = str.slice(0, pos + 1).search(/\S+$/),
//       right = str.slice(pos).search(/\s/);
  
//     // The last word in the string is a special case.
//     if (right < 0) {
//       return str.slice(left);
//     }
  
//     // Return the word, using the located bounds to extract it from the string.
//     return str.slice(left, right + pos);
  
//   }
  
//   function showCaretPos() {
//     var input = document.getElementById("editme");
//     var output = document.getElementById("output");
//     var charPosition = getCaretCharacterOffsetWithin(input);
    
//     // Replace new line with nothing.
//     var inputRawText = input.innerText.replace(/\n/g, ' ');
  
//     output.innerHTML = "Current word: " + getWordAt(inputRawText, charPosition - 1);
//   }
  
//   document.body.onkeyup = showCaretPos;
//   document.body.onmouseup = showCaretPos;

// var sel = window.getSelection();
// var editel = document.getElementById("editme");
// editel.addEventListener('keyup', (e) => HandleChange(e) );
// editel.focus();

// function insertHashtagFunc(hashtag) {
//   var element = document.getElementById("editme");
//   var textNode = element.childNodes[0];

//   // Code for re-inserting cursor at end of text prior to inserting hashtag.
//   // Necessary because when user clicks a hashtag value the editable div loses focus. 
//   var cursorRenewRange = document.createRange();
//   var curserRenewSel = window.getSelection();
//   cursorRenewRange.setStart(textNode, textNode.length);
//   cursorRenewRange.collapse(true);
//   curserRenewSel.removeAllRanges();
//   curserRenewSel.addRange(cursorRenewRange);
//   // 

//   var sel = window.getSelection();
//   var range = sel.getRangeAt(0);
//   var charPosition = getCaretCharacterOffsetWithin(element);
//   var currWord = getWordAt(element.innerHTML, charPosition);
//   var rangeOffset = charPosition - (currWord.length+1);
//   var hashtagNode = document.createTextNode(hashtag);
  
//   if (rangeOffset > 0) {
//     range.setStart(textNode, charPosition - (currWord.length+1));
//     range.setEnd(textNode, charPosition);
//     range.deleteContents();
    
//     range.insertNode(hashtagNode);
//     //range.insertNode(document.createTextNode('\u200B'));
//     range.insertNode(document.createTextNode(' '));
//     range.setStart(element, 0);
//   }
  
//   window.setTimeout(function() {
//     // Create a blank range.
//     range = document.createRange();
    
//     // Set starting point for range after the inserted hashtag text node.
//     range.setStartAfter(hashtagNode);
    
//     // If anything is in the range (other nodes) at this point, collapse it.
//     range.collapse(false);
    
//     // The selection (cursor) is set to start after space. Therefor all text prior is included
//     // in the selection range. Remove them from selection.
//     sel.removeAllRanges();
    
//     // The empty range must now be added to the selection, which will initialize cursor at the end
//     // and outside any html tags.
//     sel.addRange(range);
//     }, 0);
// }

//  function HandleChange(e) {
//     const input = e.target,
//           charPosition = getCaretCharacterOffsetWithin(input),
//           rawText = input.innerText.replace(/\n/g, ' '),
//           currentWord = getWordAt(rawText, charPosition),
//           hashtag = currentWord.match(/(?:^|\B)#[a-zA-Z][\w]{1,19}\b/g);

//     if (hashtag && e.keyCode !== 32) {
//       insertHashtagList();
//     }
// }

// var insertHashtagList = (function() {
//   if (window.getSelection) {
//     return function() {
//       var container = document.getElementById('new-blurt-container');
//       var hashtagBox = document.createElement('div');
//       var hashtagitem = document.createElement('span');
//       var boxCheck = document.getElementById('hashtagbox');

//       if (!boxCheck) {
//         hashtagBox.setAttribute('id', 'hashtagbox');
//         hashtagBox.setAttribute('class', 'hashtag-modal');
//         hashtagitem.innerText = '#Reviwa';
//         hashtagBox.appendChild(hashtagitem);
//         container.appendChild(hashtagBox);
      
//         hashtagitem.addEventListener('click', () => {
//           hashtagBox.remove();
//           return insertHashtagFunc(hashtagitem.innerText);
//         });
//       }
//     }
//   } else if (document.selection && document.selection.createRange) {
//     return function(content) {
//       var range = document.selection.createRange();
//       if (typeof content === 'string') {
//         range.text = content;
//       } else {
//         range.pasteHTML(content.outerHTML);
//       }
//     }
//   }
// })();


// START OF CODE FOR REPLACING WORD AT CURSOR

// document.addEventListener("keydown", function(e) {
//   var elt = e.target;
//   if (elt.isContentEditable)
//   {        
//       if (e.keyCode == 9) {
//           e.preventDefault();
//           elt.focus();
//           sel = document.getSelection();
//           sel.modify("extend", "backward", "word");
//           range = sel.getRangeAt(0);
//           console.log(range.toString().trim());
//           range.deleteContents();
//           var el = document.createElement("div");
//           el.innerHTML = '<b>test</b> and a <a href="hjkh">link</a>';
//           var frag = document.createDocumentFragment(), node;
       
//           while (node = el.firstChild) {
//               frag.appendChild(node);
//           }
//           range.insertNode(frag);
//           range.collapse();
//       }
//   }
// });

// const tagdata = [ 
//     { _id: 'fukr', tagCount: 12 },
//     { _id: 'FunSnow', tagCount: 12 },
//     { _id: 'whippy', tagCount: 9 },
//     { _id: 'MyGuns', tagCount: 8 },
//     { _id: 'Reviwa', tagCount: 7 },
//     { _id: 'Funsnow', tagCount: 2 },
//     { _id: 'reviwa', tagCount: 2 },
//     { _id: 'myguns', tagCount: 1 },
//     { _id: 'funsnow', tagCount: 1 },
//     { _id: 'fu', tagCount: 1 } 
// ];

// var returnData = tagdata.reduce((acc, cur) => {
//     const found = acc.find(({ _id }) => (_id.toLowerCase() === cur._id.toLowerCase()));
//     console.log(found);
//     if (found) {
//         found.tagCount += cur.tagCount;
//     }
//     else {
//         acc.push(cur);
//     }
//     return acc;
// }, []).sort((a, b) => (b.tagCount - a.tagCount));

// console.log(returnData);

// const testData = [
//     {_id: "mee", count: 33},
//     {_id: "you", count: 3},
//     {_id: "mee", count: 37},
// ];

// const found = testData.find(({_id}) => {
//     return _id === "mee"
// });
// console.log(found);

const isString = value => typeof value === 'string';
const isNumber = value => typeof value === 'number' && !isNaN(value);
const isValidDateString = value => /(\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d\.\d+)|(\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d)|(\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d)/.test(value);
const isValidDateObject = value => value instanceof Date && !isNaN(value);


const transaction = {
    id:1,
    amount:100,
    category: 'eating',
    sourceAccount: 'A',
    targetAccount: 'B',
    time: '2020-01-02T00:00:00Z'
};

const transactionSchema = {
    id: isNumber,
    amount: isNumber,
    sourceAccount: isString,
    targetAccount: isString,
    category: isString,
    time: isValidDateString
  };
  
  const isValidTransactionObject = (object = {}, schema) => {
    if (!schema) throw new Error('Schema must be provided to validator function');
  
    return Object.keys(schema)
      .filter(key => {
          console.log(schema[key](object[key]));
          return !schema[key](object[key])
      })
      .map(key => new Error(`${key} is invalid.`));
  };
  
  const errors = isValidTransactionObject(transaction, transactionSchema);

  console.log(errors);