import { render } from '@testing-library/react';
import React from 'react';

function Food({ favorite }) {
  return <h3> I love {favorite} </h3>;
}

const foodILike = [{}]

function renderFood(dish) {
  return <Food name={dish.name} picture={dish.image} />
}

function App() {
  return (
    <div>
      {foodILike.map(renderFood)}      
    </div>
  );
}

export default App;
