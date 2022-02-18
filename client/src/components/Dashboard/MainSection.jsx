import { useSelector } from 'react-redux';
import TweetForm from '../Common/TweetForm';
import Tweet from '../Common/Tweet';
import { isEmpty } from '../Common/Utils';
import { Center } from '@chakra-ui/react'

function MainSection() {
	const tweets = useSelector(state => state.tweetReducer);

	return (
    <Center>
        <div className="container-home">
          <TweetForm />
          <div className="content">
            <div className="post-container">
              {!isEmpty(tweets) &&
                tweets.map((tweet, index) => <Tweet tweet={tweet} key={index} />)}
            </div>
          </div>
        </div>
    </Center>
	);
}

export default MainSection;
