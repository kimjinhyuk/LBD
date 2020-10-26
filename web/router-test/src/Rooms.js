import React from 'react'
import { Link, Route } from 'react-router-dom'

/* Rooms 컴포넌트 내부에는 또다시 라우팅을 처리하는 코드가 들어 있다. */
function Rooms ({ match }) { /* Route 를 통해서 렌더링되는 컴포넌트는 match라는 속성값을 사용할 수 있다. */
  return (
    <div>
      <h2> 여기는 방을 소개하는 페이지 입니다.</h2>
      <Link to={`${match.url}/blueRoom`}>파란 방 입니다</Link>  {/* match.url은 Route 컴포넌트의 path 속상값과 같다 */}
      <br />
      <Link to={`${match.url}/greenRoom`}>초록 방 입니다</Link> 
      <br />
      <Route path={`${match.url}/:roomID`} component={Room} /> {/* Route 커포넌트의 path 속성값에서 콜론을 사용하면 파라미터를 나타낼 수 있다.  */}
      <Route 
        exact
        path={match.url}
        render = {() => <h3> 방을 선택해 주세요. </h3>} 
      />
    </div>
  );
}

export default Rooms;

function Room({match}) {
  return <h2>{`${match.params.roomID} 방을 선택하셨습니다.`}</h2>; /* 추출된 파라미터는 match.params.{파라미터 이름} 형식으로 사용될 수 있다. */
}