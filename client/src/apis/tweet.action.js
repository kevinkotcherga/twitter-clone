import axios from "axios";

export const GET_TWEETS = "GET_TWEETS";
export const ADD_TWEET = "ADD_TWEET";
export const DELETE_TWEET = 'DELETE_TWEET';


export const getTweets = () => {
  return (dispatch) => {
    return axios
      .get('api/v1/post_tweets?_sort=id&_order=desc')
      .then(res => {
        dispatch({ type: GET_TWEETS, payload: res.data });
      })
      .catch(err => console.log(err));
  };
};

export const addTweet = (data) => {
  return (dispatch) => {
    return axios
      .post('api/v1/post_tweets', data)
      .then(res => {
        dispatch({ type: ADD_TWEET, payload: res.data });
      })
      .catch(err => console.log(err));
  };
};

export const deleteTweet = tweetId => {
	return dispatch => {
		return axios({
      method: 'delete',
      url: `api/v1/post_tweets/${tweetId}`,
    })
      .then(() => {
        dispatch({ type: DELETE_TWEET, payload: { tweetId } });
      })
      .catch(err => console.log(err));
	};
};
