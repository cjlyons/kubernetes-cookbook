import React from 'react';
import ReactDOM from 'react-dom';
import { createBrowserHistory } from 'history';
import './index.css';
import Game from './game/game.js';

// enable relative routing
export const history = createBrowserHistory({
    basename: "./"
});

ReactDOM.render(<Game />, document.getElementById("root"));
