import React from "react";
import Like from "./Like";

const Tweet = ({ tweet }) => {

  return (
    <div className="post">
      <p>{tweet.body}</p>
      <p>
        @{tweet.user.last_name}
      </p>

      <div className="author">
        <Like tweet={tweet} />
      </div>
    </div>
  );
};

export default Tweet;
