import http from 'k6/http';
import { sleep } from 'k6';

export const options = {
  vus: 20,
  duration: '2m',
};

export default function () {
  http.get('http://localhost:9090');
  sleep(0.2);
}
