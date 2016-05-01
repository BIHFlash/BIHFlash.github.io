var masVerifyIdFrame = document.getElementById('masVerifyId_k3aw33r2csdqascvrs3hi5').contentWindow;if (masVerifyIdFrame != null){
	masVerifyIdFrame.postMessage(JSON.stringify({key: '_mas_verify_id_v2', method: 'set', storage: 'cookie', data: '518430F6B0C88EE7C82FD0F7E9AFE9EC,F8F9CF4696BF88E0A2053B1A251310C5,B00AA0949F470D5EAF8E0AF5E109F2B3'}), '*')
	masVerifyIdFrame.postMessage(JSON.stringify({key: '_mas_verify_id_v2', method: 'set', storage: 'localStorage', data: '518430F6B0C88EE7C82FD0F7E9AFE9EC,F8F9CF4696BF88E0A2053B1A251310C5,B00AA0949F470D5EAF8E0AF5E109F2B3'}), '*')
	setMasCookie('_mas_verify_id_v2','518430F6B0C88EE7C82FD0F7E9AFE9EC,F8F9CF4696BF88E0A2053B1A251310C5,B00AA0949F470D5EAF8E0AF5E109F2B3',365)
	try {
		localStorage.setItem('_mas_verify_id_v2', '518430F6B0C88EE7C82FD0F7E9AFE9EC,F8F9CF4696BF88E0A2053B1A251310C5,B00AA0949F470D5EAF8E0AF5E109F2B3');
	}catch(e) {
		console.log('Unable to write to localStorage');
	}
}
fetchAd_k3aw33r2csdqascvrs3hi5();