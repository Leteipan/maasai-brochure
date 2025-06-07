// components/Footer.tsx
import { FaPhone, FaEnvelope, FaGlobe, FaFacebookF, FaInstagram } from 'react-icons/fa';

export default function Footer() {
  return (
    <div className="space-y-4">
      <h2 className="text-2xl font-bold text-[#3B3A29]">LOCATION</h2>
      <p className="text-gray-700">Kajiado, Kenya</p>
      <p className="flex items-center text-gray-700">
        <FaPhone className="mr-2 text-[#8C4510]" /> +254 729 98797
      </p>
      <p className="flex items-center text-gray-700">
        <FaEnvelope className="mr-2 text-[#8C4510]" /> enkaulelesidan.org
      </p>
      <p className="flex items-center text-gray-700">
        <FaGlobe className="mr-2 text-[#8C4510]" /> enkaulele.sidan
      </p>
      <div className="flex space-x-4 mt-4">
        <a href="#" aria-label="Facebook" className="text-[#3B3A29] hover:text-[#8C4510]">
          <FaFacebookF />
        </a>
        <a href="#" aria-label="Instagram" className="text-[#3B3A29] hover:text-[#8C4510]">
          <FaInstagram />
        </a>
      </div>
    </div>
  );
}
