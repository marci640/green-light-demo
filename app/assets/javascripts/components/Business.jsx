class Business extends React.Component {
  constructor (props) {
    super(props);
    this.state = { 
      ad_array: this.props.ad_array, 
    };
  }

//   render() {
//     return (
//     <div>
//       { 
//         this.state.ad_array.map((ad, index) => (
//           <div className="card" >
//             <p> {ad.business} </p>
//             <p> {ad.monthly_rate} </p>
//             <img src={ad.image}/>
//             <a href='/' className="btn btn-primary">Go somewhere</a>
//           </div>
//           ))
//         }
//     </div>
//     );
//   }
// }


  render() {
    return (
    <div>
      <div class="top-buffer">
        <div class="row">
          
          { 
            this.state.ad_array.map((ad, index) => (
              <div class="col-sm">
            <div className="card">
              <img className="card-img-top" alt="Card image cap" src={ad.image}/>
              <div className="card-body">
                <h5 className="card-title">{ad.business}</h5>
                <p className="card-text">{ad.monthly_rate} per month </p>
                <a href="#" className="btn btn-primary">Select Ad</a>
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



