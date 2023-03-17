const API_URL = 'https://api.coingecko.com/api/v3/simple/token_price/ethereum?contract_addresses=0x2b591e99afe9f32eaa6214f7b7629768c40eeb39&vs_currencies=usd';

async function fetchHexPrice() {
    const response = await fetch(API_URL);
    const data = await response.json();
    const hexPrice = data['0x2b591e99afe9f32eaa6214f7b7629768c40eeb39'].usd;
    document.getElementById('hexPriceValue').textContent = `$${hexPrice.toFixed(4)}`;
}

fetchHexPrice();

