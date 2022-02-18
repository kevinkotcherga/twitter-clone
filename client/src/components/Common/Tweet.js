import React from "react";
import { useUserState } from "../../contexts/user";
import Like from "./Like";

const Tweet = ({ tweet }) => {

  const { user } = useUserState();

  return (

    <div className="post">
      <p>{tweet.body}</p>
      <p>{tweet.user_id}</p>
      <p>{user.first_name}</p>

      <div className="author">
        <Like tweet={tweet} />
      </div>
    </div>
  );
};

export default Tweet;
