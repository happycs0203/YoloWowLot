//window.onload = function(){ 
// //클라이언트 소켓 생성
// var socket = io.connect('ws://192.168.0.151:3000');
// //DOM 참조
// var div = document.getElementById('message');
// var txt = document.getElementById('txtChat');
// var user = document.getElementById('clientID').innerHTML;
// //텍스트 박스에 포커스 주기 
//// txt.focus();
// 
// //텍스트 박스에 이벤트 바인딩
// txt.onkeydown = sendMessage.bind(this); 
// function sendMessage(event){
//  if(event.keyCode == 13){
//   //메세지 입력 여부 체크   
//   var message = event.target.value;
//   if(message){
//	   var serverinput = {clientID:user,message:message};
//     //소켓서버 함수 호출  
//     socket.emit('serverReceiver', serverinput);
//     //텍스트박스 초기화
//     txt.value = '';
//   }
//  }
// };
// 
// function formatAMPM(date) {
//	    var hours = date.getHours();
//	    var minutes = date.getMinutes();
//	    var ampm = hours >= 12 ? 'PM' : 'AM';
//	    hours = hours % 12;
//	    hours = hours ? hours : 12; // the hour '0' should be '12'
//	    minutes = minutes < 10 ? '0'+minutes : minutes;
//	    var strTime = hours + ':' + minutes + ' ' + ampm;
//	    return strTime;
//	}            
//
// 
// 
// var me = {};
// //클라이언트 receive 이벤트 함수(서버에서 호출할 이벤트)
// socket.on('clientReceiver', function(data){
//	 var date = formatAMPM(new Date());
//		console.log('서버에서 전송:', data);
//		//채팅창에 메세지 출력하기
//		if (data.clientID != user) {
//			//상대방의 메세지 출력
//			var message = '<li style="width:100%;">' +
//				'<div class="msj macro">' +
//				'<div class="username">' + data.clientID + ': </div>' +
//				'<div  class="text text-l">' +
//				'<p>' + data.message + '</p>' +
//				'<p><small>' + date + '</small></p>' +
//				'</div>' + '</div>' + '</li>';
//		} else {
//			//자신의 메세지 출력
//			var message = '<li style="width:100%">' +
//				'<div class="msj-rta macro">' +
//				'<div class="username">' + data.clientID + ': </div>' +
//				'<div class="text text-r">' +
//				'<p>' + data.message + '</p>' +
//				'<p><small>' + date + '</small></p>' +
//				'</div>' + '</div>' + '</li>';
//		}
//		
//		div.innerHTML += message;
//   //채팅창 스크롤바 내리기  
//   div.scrollTop = div.scrollHeight;   
// });
//};




window.onload = function(){ 
 //클라이언트 소켓 생성
var socket = io.connect('ws://192.168.0.151:3000');
 //DOM 참조
 var div = document.getElementById('message');
 var txt = document.getElementById('txtChat');
 var user = document.getElementById('clientID').innerHTML;
 var roominBtn = document.getElementById('roomin');
 var roomoutBtn = document.getElementById('roomout');
 
 var room = "/hongRoom";

 socket.on('connect', function () {
 
	 $(".chat_in").click(function(){
			socket.emit('joinRoom', room);
	});
 
 });
 
 $(".chat_out").click(function(){
		socket.emit('leaveRoom');
});
 
 //텍스트 박스에 이벤트 바인딩
 txt.onkeydown = sendMessage.bind(this); 
 function sendMessage(event){
  if(event.keyCode == 13){
   //메세지 입력 여부 체크   
   var message = event.target.value;
   if(message){
	   var serverinput = {clientID:user,message:message};
     //소켓서버 함수 호출  
     socket.emit('sendMessage', serverinput);
     //텍스트박스 초기화
     txt.value = '';
   }
  }
 };
 
 function formatAMPM(date) {
	    var hours = date.getHours();
	    var minutes = date.getMinutes();
	    var ampm = hours >= 12 ? 'PM' : 'AM';
	    hours = hours % 12;
	    hours = hours ? hours : 12; // the hour '0' should be '12'
	    minutes = minutes < 10 ? '0'+minutes : minutes;
	    var strTime = hours + ':' + minutes + ' ' + ampm;
	    return strTime;
	}            

 
 
 var me = {};
 //클라이언트 receive 이벤트 함수(서버에서 호출할 이벤트)
 socket.on('sendMessage', function(data){
	 var date = formatAMPM(new Date());
		console.log('서버에서 전송:', data);
		//채팅창에 메세지 출력하기
		if (data.clientID != user) {
			//상대방의 메세지 출력
			var message = '<li style="width:100%;">' +
			'<div class="msj macro">' +
			'<div class="username">' + data.clientID + ': </div>' +
			'<div  class="text text-l">' +
			'<p>' + data.message + '</p>' +
			'<p><small>' + date + '</small></p>' +
			'</div>' + '</div>' + '</li>';
			} else {
			//자신의 메세지 출력
			var message = '<li style="width:100%">' +
				'<div class="msj-rta macro">' +
				'<div class="username">' + data.clientID + ': </div>' +
				'<div class="text text-r">' +
				'<p>' + data.message + '</p>' +
				'<p><small>' + date + '</small></p>' +
				'</div>' + '</div>' + '</li>';
		}
		
		div.innerHTML += message;
   //채팅창 스크롤바 내리기  
   div.scrollTop = div.scrollHeight;   
 });
};