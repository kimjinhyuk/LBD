import React from 'react';

function Food({ fav }) {
  return <h3> I love {fav}</h3>;
}

function App() {
  return (
    <div>
      <h1>hello! </h1>
      <Food fav="kimchi" />
      <Food fav="ramen" />
      <Food fav="삼겹살" />
      <Food fav="쭈꾸미" />
      {/* Food component property fav value kimchi */}
    </div>
  );
}

export default App;
