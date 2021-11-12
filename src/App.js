import './App.css';
import { Segment, Header } from 'semantic-ui-react'
import 'semantic-ui-css/semantic.min.css';

function App() {
  return (
    <div className="App">
      <Segment placeholder>
        <Header>
          Hello World!
        </Header>

      </Segment>
    </div>
  );
}

export default App;
