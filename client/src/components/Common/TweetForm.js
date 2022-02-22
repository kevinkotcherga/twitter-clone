import React, { useState } from "react";
import { useDispatch } from "react-redux";
import { addTweet } from "../../apis/tweet.action";

const TweetForm = () => {
  const [body, setBody] = useState('');
  const dispatch = useDispatch();

  const handleForm = (e) => {
  e.preventDefault();

  if (body) {
    const data = {
      body,
      user_id: 'f617d1e8-ab54-4093-8eb6-43a790672c28',
    };

    dispatch(addTweet(data));
    setBody('');
  }
};

  return (
    <div className="form-container">
      <form onSubmit={e => handleForm(e)}>
        <h1>Accueil</h1>
        <textarea
          placeholder="Quoi de neuf ?"
          value={body}
          onChange={e => setBody(e.target.value)}
        ></textarea>
        <input type="submit" value="Tweeter" className="submit" />
      </form>
    </div>
  );
};

export default TweetForm;
