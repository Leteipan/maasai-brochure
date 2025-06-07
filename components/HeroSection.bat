// components/HeroSection.tsx
import Link from 'next/link';
import Image from 'next/image';

export default function HeroSection() {
  return (
    <section className="bg-[#FFF4DC]">
      {/* Hero image */}
      <div className="relative w-full h-80 md:h-96">
        <Image
          src="/images/brochure.jpg"
          alt="Maasai Cultural Group"
          fill
          style={{ objectFit: 'cover' }}
          priority
        />
      </div>

      {/* Text & CTAs */}
      <div className="max-w-4xl mx-auto text-center px-6 py-12">
        <h1 className="text-3xl md:text-4xl font-extrabold text-[#3B3A29] mb-4">
          OUR CULTURE, OUR JOURNEY
        </h1>
        <p className="text-lg text-gray-700 mb-8">
          Karibu! We invite you to discover the rich traditions of the Maasai at Enkaulele Sidan.
          Experience authentic culture, history, and hospitality in our community-driven cultural village.
        </p>
        <div className="flex flex-wrap justify-center gap-4">
          <button className="bg-[#8C4510] hover:bg-[#7a3d0e] text-white py-2 px-6 rounded">
            BOOK NOW
          </button>
          <Link
            href="/tours"
            className="bg-[#8C4510] hover:bg-[#7a3d0e] text-white py-2 px-6 rounded"
          >
            EXPLORE TOURS
          </Link>
          <Link
            href="/gallery"
            className="bg-[#8C4510] hover:bg-[#7a3d0e] text-white py-2 px-6 rounded"
          >
            VIEW GALLERY
          </Link>
        </div>
      </div>
    </section>
  );
}
