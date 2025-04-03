var elements = document.querySelectorAll('.content');

function copyToClipboard(str) {
 var area = document.createElement('textarea');
 
 document.body.appendChild(area);
 //area.value = 'https://vk.com/feed?section=search&q=%23' + str;
 area.value = '#' + str;
 area.select();
 document.execCommand("copy");
 document.body.removeChild(area);
}

for (let elem of elements) {
	elem.onclick = event => {
		if (event.target.className === 'selections') {
			let selli = document.querySelector('p.selections:hover');
			selli.addEventListener('click', ()=>{
				copyToClipboard(selli.innerHTML)
			})
		}
	}
}

