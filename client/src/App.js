import React, { useEffect } from 'react';
import { ChakraProvider, Box, theme } from '@chakra-ui/react';
import { ColorModeSwitcher } from './ColorModeSwitcher';
import Main from './components/Main';

import { AuthProvider } from './contexts/auth';
import { UserProvider } from './contexts/user';


function App(props) {

  useEffect(() => {
    fetch('api/v1/users')
      .then(res => res.json())
      .then(data => console.log(data));
  }, []);

  return (
    <AuthProvider>
      <UserProvider>
        <ChakraProvider theme={theme}>
          <Box textAlign="center" fontSize="xl">

            <Main {...props} />
          </Box>
        </ChakraProvider>
      </UserProvider>
    </AuthProvider>
  );
}

export default App;
