// http://www.cs.up.ac.za/users/image/u16169532

function changeImage(){
	setInterval(cf,5000);
}

function randomA(min, max) {
  return Math.floor(Math.random() * (max - min)) + min;
}

function cf() {
	alert('hello');
  img = document.getElementById('userImage');
  user = 'http://www.cs.up.ac.za/users/image/';

}
