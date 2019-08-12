//DOMContentLoaded   : DOM fully loaded and parsed
//load               : page is fully loaded

let ele;

window.addEventListener('load', (event) => {

	ele =  document.querySelector('div#fake_textarea');

	if ( ele !== null) {        	
//		ele.innerHTML = "<p class='earned'>This is a test by Jonatan";
		content = ele.textContent;
		ele.innerHTML = content;
	}

});
