import React from 'react';
const axios = require('axios').default;

class Hello extends React.Component {

    async greeting(name) {
        let dataPromise;
        await axios.get(`/hello-world/${name}`)
        .then((responsePromise) => {
            dataPromise = responsePromise.data;
        })
        .catch((error) => {
            console.log(error);
            dataPromise = {salutation: `${error.response.status} error`, name: name};
        });
        // const greeting = {salutation: "Hello", name: name};
        return dataPromise;
    }

}

export default Hello;