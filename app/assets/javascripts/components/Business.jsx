class Business extends React.Component {
  constructor (props) {
    super(props);
    this.state = { 
      ad_array: this.props.ad_array, 
      current_driver: this.props.current_driver
    };
  }

  render() {
    return (
    <div>
      <div className="top-buffer">
        <div className="row">
          { 
            this.state.ad_array.map((ad, index) => (
              <div className="col">
                <div className="card">
                  <img className="card-img-top" alt="Card image cap" src={ad.image}/>
                  <div className="card-body">
                    <h5 className="card-title">{ad.business}</h5>
                    <p className="card-text">{ad.monthly_rate} per month </p>
                   { this.state.current_driver && <a href={`/drivers/${this.state.current_driver.id}`} className="btn btn-primary">Select Ad</a> } 
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