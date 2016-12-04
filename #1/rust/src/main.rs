#[allow(unused_must_use)]
fn main() {
  use std::io;
  let mut input = String::new();
  io::stdin().read_line(&mut input);
  for _ in 0..input.trim_right().parse::<usize>().unwrap() {
    let mut input2 = String::new();
    io::stdin().read_line(&mut input2);
   
    let mut total = 0;
    let mut accruer = 0..(input2.trim_right().parse::<usize>().unwrap());
    loop {
      match accruer.next() {
        Some(n) => {
          if n % 5 == 0 {
            total += n
          } else if n % 3 == 0 {
            total += n
          }
        },
        None => {
          break;
        },
      }
    }
    println!("{:?}", total)
  }
}
