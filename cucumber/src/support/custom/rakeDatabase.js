const axios = require('axios');

/**
 * rake the database for project Oppenheimer
 */

export default () => {
    const response = axios({
        url: 'http://localhost:8080/calculator/rakeDatabase',
        method: 'POST',
        timeout: 10000,
    });
    return response;
};