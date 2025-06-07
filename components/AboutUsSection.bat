// components/AboutUsSection.tsx
import Image from 'next/image';

export default function AboutUsSection() {
  return (
    <section className="bg-[#FFF4DC] px-6 py-12">
      <div className="max-w-4xl mx-auto grid grid-cols-1 md:grid-cols-2 gap-8 items-center">
        {/* Text */}
        <div>
          <h2 className="text-2xl font-bold text-[#3B3A29] mb-4">ABOUT US</h2>
          <p className="text-gray-700">
            Our mission is to preserve Maasai heritage and empower our community through sustainable tourism.
            Learn more about our story and values.
          </p>
        </div>
        {/* Image */}
        <div className="w-full h-56 md:h-64 relative">
          <Image
            src="/images/brochure.jpg"
            alt="Maasai Hosts Smiling"
            layout="fill"
            objectFit="cover"
            className="rounded"
          />
        </div>
      </div>
    </section>
  );
}
