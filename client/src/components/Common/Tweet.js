import React from "react";
import { Link } from "react-router-dom";
import Like from "./Like";

const Tweet = ({ tweet }) => {

  return (
    <div className="post">
      <p>{tweet.body}</p>
      <Link className="link" to="/profile">@{tweet.user.last_name}</Link>

      <div className="author">
        <Like tweet={tweet} />
      </div>
    </div>
  );
};

export default Tweet;
