import { DeleteIcon, StarIcon } from "@chakra-ui/icons";
import React from "react";
import { useDispatch } from "react-redux";
import { deleteTweet } from "../../apis/tweet.action";

const Like = ({ tweet }) => {
  const dispatch = useDispatch();

  return (
    <>
      <div className="icon">
        <StarIcon w={4} h={4} />
        <span>{tweet.like}</span>
      </div>

      <div className="icon">
        <DeleteIcon
          w={4}
          h={4}
          onClick={() => dispatch(deleteTweet(tweet.id))}
        />
      </div>
    </>
  );
};

export default Like;
