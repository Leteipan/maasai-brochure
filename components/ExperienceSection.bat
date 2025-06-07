// components/ExperienceSection.tsx
import { FaHome, FaHotel, FaWineGlassAlt } from 'react-icons/fa';
import { GiElephant } from 'react-icons/gi';

export default function ExperienceSection() {
  return (
    <section className="bg-[#FFE085] px-6 py-12">
      <div className="max-w-4xl mx-auto">
        <h2 className="text-2xl font-bold text-[#3B3A29] mb-8">OUR EXPERIENCES</h2>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-8 text-[#3B3A29]">
          {/* Left Column */}
          <div className="space-y-6">
            <div className="flex items-start">
              <FaHome className="w-6 h-6 mr-3 mt-1 text-[#8C4510]" />
              <div>
                <h3 className="font-semibold">Half-Day Village Visit</h3>
                <p className="text-sm text-gray-700">Half-Day Village Visit</p>
              </div>
            </div>
            <div className="flex items-start">
              <FaHotel className="w-6 h-6 mr-3 mt-1 text-[#8C4510]" />
              <div>
                <h3 className="font-semibold">Overnight Stay</h3>
                <p className="text-sm text-gray-700">with Maasai Family</p>
              </div>
            </div>
          </div>
          {/* Right Column */}
          <div className="space-y-6">
            <div className="flex items-start">
              <FaWineGlassAlt className="w-6 h-6 mr-3 mt-1 text-[#8C4510]" />
              <div>
                <h3 className="font-semibold">Full-Day Cultural Immersion</h3>
                <p className="text-sm text-gray-700">Stay of same-in-home 8 minutes</p>
              </div>
            </div>
            <div className="flex items-start">
              <GiElephant className="w-6 h-6 mr-3 mt-1 text-[#8C4510]" />
              <div>
                <h3 className="font-semibold">Combo: Safari + Village Experience</h3>
                <p className="text-sm text-gray-700">&nbsp;</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
