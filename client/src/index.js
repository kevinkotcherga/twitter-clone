import { ColorModeScript } from '@chakra-ui/react';
import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import './styles/index.scss';

//redux
import { Provider } from 'react-redux';
import { applyMiddleware, createStore } from 'redux';
import { composeWithDevTools } from 'redux-devtools-extension';
import thunk from 'redux-thunk';
import rootReducer from './reducers';
import { getTweets } from './apis/tweet.action';

const store = createStore(
  rootReducer,
  composeWithDevTools(applyMiddleware(thunk))
);

store.dispatch(getTweets());

ReactDOM.render(
  <Provider store={store}>
    <ColorModeScript />
    <App />
  </Provider>,
  document.getElementById('root')
);
