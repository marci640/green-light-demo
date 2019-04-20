class Driver extends React.Component {
  constructor (props) {
    super(props);
    this.state = { 
      car_array: this.props.car_array, 
      current_driver: this.props.current_driver
    };
  }

  render() {
    return (
    <div>
      <div className="top-buffer">
        <div className="row">
          { 
            this.state.car_array.map((car, index) => (

              <div key={index} className="col">
                <div className="card">
                  <img className="card-img-top" alt="Card image cap" src={car.image}/>
                  <div className="card-body">
                    <h5 className="card-title">{car.make}</h5>
                    <p className="card-text">{car.model} </p>
                   { this.state.current_driver && <a href={`/ads/${ad.id}`} className="btn btn-primary">Select Ad</a> } 
                  </div>
                </div>
              </div>
            ))
          }
        </div>
      </div>
    </div>
    );
  }
}