import React, { useState } from 'react';
import Counter from './Counter';
import Info from './info';
import ContextSample from './ContextSample';
import Average from './Average';
import UsePromiseSample from './UsePromiseSample';

// const App = () => {

//   const [visible, setVisible] = useState(false);

//   return (
//     <div>
//       <button 
//         onClick={() => {
//           setVisible(!visible);
//         }}>
//           {visible ? '숨기기' : '보이기'}
//       </button>
//       <hr />
//       {visible && <Info />}
//     </div>
//   );
// };

const App = () => {
  return <UsePromiseSample />;
};

export default App;