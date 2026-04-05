-- Database
CREATE DATABASE urban_planting;
USE urban_planting;

-- Table for Plants
CREATE TABLE plants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(150),
    first_letter CHAR(1) GENERATED ALWAYS AS (LEFT(name, 1)) STORED,
    image_url VARCHAR(500)
);

-- Table for Sections
CREATE TABLE plant_sections (
    id INT AUTO_INCREMENT PRIMARY KEY,
    plant_id INT NOT NULL,
    section_name VARCHAR(100) NOT NULL,
    content TEXT,
    FOREIGN KEY (plant_id) REFERENCES plants(id) ON DELETE CASCADE
);

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Aloe Vera', 'Aloe barbadensis miller', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/1.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(1, 'General Info', 'Aloe Vera is a popular succulent plant renowned for its thick, fleshy leaves filled with a soothing gel that has been used for centuries in traditional medicine for skin ailments, burns, and digestive issues. Native to arid regions, it is easy to grow indoors as a houseplant and can also be cultivated outdoors in warm climates. The plant features rosettes of green leaves with serrated edges and occasionally produces tall spikes of tubular yellow flowers.'),
(1, 'Care - Light', 'Aloe Vera prefers bright, indirect sunlight to promote healthy growth and prevent leaf scorching. Placing it near a south-facing window with filtered light is ideal, but it can tolerate some direct morning sun. If grown in low light conditions, the leaves may become leggy and pale, so supplementing with grow lights during shorter winter days can help maintain its vibrant appearance.'),
(1, 'Care - Soil', 'Use a well-draining cactus or succulent mix to mimic its natural desert habitat and avoid water accumulation that could lead to root problems. Adding perlite or sand to standard potting soil can improve drainage. The soil should be slightly acidic to neutral, and ensuring good aeration prevents compaction over time.'),
(1, 'Care - Water', 'Water deeply but infrequently, allowing the soil to dry out completely between waterings to prevent overwatering issues common in succulents. Typically, this means watering every 2-3 weeks in summer and even less in winter when the plant is dormant. Always check the top 2 inches of soil for dryness before watering, and use room-temperature water to avoid shocking the roots.'),
(1, 'Care - Temperature', 'Ideal temperatures range between 13°C and 27°C (55°F - 80°F), making it suitable for most indoor environments. It can handle brief drops to 10°C but is sensitive to frost, so protect it from cold drafts or outdoor freezing conditions. In hotter climates, provide shade during extreme heat to avoid leaf burn.'),
(1, 'Pruning', 'Generally not required for Aloe Vera, but regular maintenance involves removing dead, dried, or damaged leaves from the base to keep the plant tidy and healthy. Use clean, sharp scissors or pruners to cut close to the stem, and remove flower stalks after they have finished blooming to redirect energy back to leaf growth. Pruning also helps prevent pest infestations by eliminating hiding spots.'),
(1, 'Propagating', 'Easily propagated from offsets, or "pups," which are small clones that grow at the base of the mother plant. Gently separate pups once they have developed a few roots of their own, allow the cut ends to callus for 1-2 days to prevent rot, and then plant them in their own pots with succulent mix. This method is reliable and faster than seeds, with new plants establishing quickly in warm, bright conditions.'),
(1, 'Growing from Seed', 'While possible, growing Aloe Vera from seed is less common due to slow germination and variability. Sow seeds in a well-draining mix, keep them moist and warm (around 21°C), and provide bright light. Germination can take 2-4 weeks, and seedlings require careful watering to avoid damping off.'),
(1, 'Potting and Repotting', 'Excellent for pots, Aloe Vera thrives in containers with drainage holes to prevent waterlogging; terra cotta pots are ideal as they allow soil to dry faster and wick away excess moisture. Repot every 2-3 years or when the plant becomes root-bound, choosing a pot only slightly larger to avoid overwatering risks. Refresh the soil during repotting to provide fresh nutrients.'),
(1, 'Overwintering', 'Bring indoors before the first frost to protect from cold damage. Place in a south-facing window or other bright location to ensure it receives adequate light during shorter days. Reduce watering significantly during winter months as growth slows, watering only when the soil is completely dry, and avoid fertilizing until spring to prevent stress.'),
(1, 'Bloom', 'Aloe Vera can produce tall flower stalks with clusters of yellow, tubular flowers, typically in late winter or spring under optimal conditions. Indoor plants bloom less frequently than outdoor ones, but providing a cool winter rest period and sufficient light can encourage flowering. The blooms attract pollinators like bees if grown outside.'),
(1, 'Common Pests', 'Common pests include mealybugs and scale insects, which often hide in leaf crevices or at the base. Regularly inspect the plant and treat infestations with insecticidal soap or neem oil. Spider mites may appear in dry conditions, so maintaining humidity can help deter them.'),
(1, 'Common Problems', 'Root rot from overwatering is a primary issue, leading to soft or mushy leaves; always ensure proper drainage. Brown leaf tips can result from underwatering, mineral buildup from tap water, or low humidity—flush the soil periodically and use distilled water if needed. Leaves growing flat or pale indicate insufficient light, so relocate to a brighter spot. Etiolation or stretching occurs in low light, and fungal issues may arise in overly moist environments.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Aglaonema pictum Tricolor', 'Aglaonema pictum "Tricolor"', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/2.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(2, 'General Info', 'Aglaonema pictum ''Tricolor'', also known as Tricolor Chinese Evergreen, is a stunning tropical houseplant prized for its variegated leaves featuring shades of green, silver, and cream. It is a slow-growing evergreen perennial that adds elegance to indoor spaces and is known for its air-purifying qualities, removing toxins like benzene and formaldehyde from the air.'),
(2, 'Care - Light', 'Thrives in medium to low indirect light, making it perfect for indoor settings away from direct sun, which can scorch the delicate leaves. It can adapt to fluorescent lighting in offices, but brighter indirect light enhances the variegation colors without causing fading or burn.'),
(2, 'Care - Soil', 'Use a well-draining, peat-based soil to retain some moisture while preventing root rot. A mix with perlite or vermiculite improves aeration, and the soil should be slightly acidic to neutral for optimal nutrient uptake.'),
(2, 'Care - Water', 'Keep soil evenly moist but not soggy to avoid waterlogging; water when the top inch feels dry. Reduce frequency in cooler months, and always use room-temperature water to prevent leaf spotting from cold shock.'),
(2, 'Care - Humidity', 'Prefers high humidity levels, ideally above 50%, to mimic its tropical origins. Mist the leaves regularly, use a pebble tray with water, or place near a humidifier to prevent brown tips, especially in dry indoor air during heating seasons.'),
(2, 'Care - Temperature', 'Maintain warm room temperatures between 18°C and 24°C (65°F - 75°F), avoiding cold drafts or sudden fluctuations that can cause leaf drop. It is sensitive to temperatures below 15°C.'),
(2, 'Pruning', 'Prune yellow or dead leaves by cutting them at the base with clean shears to maintain appearance and health. The plant can be cut back to encourage a bushier habit, removing leggy stems to promote new growth from the base.'),
(2, 'Propagating', 'Propagate by stem cuttings or by dividing the root ball during repotting. Stem cuttings can be rooted in water or directly in soil—place in a warm, humid spot and keep moist until roots form, which takes 4-6 weeks. Division is best in spring for established plants.'),
(2, 'Potting and Repotting', 'A classic houseplant well-suited to pots with good drainage to prevent standing water. Repot every 2-3 years in spring when roots fill the pot, using a slightly larger container and fresh soil to rejuvenate the plant.'),
(2, 'Overwintering', 'As an indoor plant, care remains consistent year-round, but protect from cold drafts near windows or doors. Reduce watering slightly as growth slows in winter, and maintain humidity to counteract dry indoor air from heating systems.'),
(2, 'Bloom', 'Aglaonema rarely blooms indoors, but when it does, it produces small, insignificant spathes similar to peace lilies. Flowering is more common in mature plants under ideal conditions, but the plant is primarily grown for its foliage rather than flowers.'),
(2, 'Common Pests', 'Susceptible to spider mites, mealybugs, scale, and aphids, which thrive in dry conditions. Inspect leaves regularly, especially undersides, and treat with horticultural oil or soap sprays. Increasing humidity can help prevent infestations.'),
(2, 'Common Problems', 'Yellowing leaves often indicate overwatering or poor drainage, leading to root rot—allow soil to dry more between waterings. Brown leaf tips are caused by low humidity or fluoride in tap water; use filtered water and mist frequently. Leggy growth results from insufficient light, so move to a brighter location. Note: The plant is toxic to pets and humans if ingested, causing oral irritation.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Alocasia Tiny Dancer', 'Alocasia "Tiny Dancer"', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/3.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(3, 'General Info', 'Alocasia ''Tiny Dancer'' is a compact hybrid variety of Alocasia known for its elegant, arrow-shaped leaves on slender stems that resemble a dancer''s pose. This tropical houseplant is valued for its unique foliage and is suitable for small spaces, growing to about 1-2 feet tall. It is part of the Arum family and originates from Southeast Asian rainforests.'),
(3, 'Care - Light', 'Requires bright, indirect light to maintain leaf color and shape; direct sun can cause scorching, while too little light leads to weak growth. East or west-facing windows with sheer curtains are ideal, and rotating the plant ensures even growth.'),
(3, 'Care - Soil', 'Use a chunky, airy, fast-draining potting mix, such as one with orchid bark, perlite, and peat, to prevent water retention and promote root health. The soil should be loose to allow oxygen to reach the roots, mimicking its epiphytic tendencies.'),
(3, 'Care - Water', 'Keep soil consistently moist but not waterlogged, watering when the top layer dries slightly. Use filtered or rainwater to avoid chemical buildup, and ensure no standing water in the saucer to prevent rot.'),
(3, 'Care - Humidity', 'High humidity is essential, preferably 60% or higher, to prevent leaf crisping. Group with other plants, use a humidifier, or place on a pebble tray; low humidity causes brown edges and can stress the plant.'),
(3, 'Care - Temperature', 'Prefers warm temperatures between 18°C and 25°C (65°F - 77°F), avoiding cold below 15°C which can trigger dormancy. Protect from air conditioning vents or heaters that dry the air.'),
(3, 'Pruning', 'Remove yellow or damaged leaves by cutting the stalk close to the main stem with sterilized tools to prevent disease spread. Regular pruning keeps the plant compact and encourages new leaf production.'),
(3, 'Propagating', 'Propagate by dividing the rhizomes (corms) when repotting in the spring. Carefully separate healthy sections with roots, plant in fresh mix, and keep humid until established; this method is straightforward and preserves the parent plant''s characteristics.'),
(3, 'Potting and Repotting', 'Ideal for pots with excellent drainage to avoid root issues; use a container that allows room for growth but not too large. Repot annually in spring to refresh the soil, check for corms, and divide if needed for propagation.'),
(3, 'Overwintering', 'May go dormant in winter if conditions are cool or dry, with leaves dying back—reduce watering, stop fertilizing, and keep in a warm place above 15°C. Growth will resume in spring with increased light and moisture; if not dormant, maintain regular care but watch for pests.'),
(3, 'Bloom', 'Alocasias occasionally produce spathe-like flowers, but ''Tiny Dancer'' is grown mainly for foliage and blooms infrequently indoors. Flowers are small and insignificant, often removed to conserve energy for leaves.'),
(3, 'Common Pests', 'Highly susceptible to spider mites due to its preference for humidity; also watch for mealybugs and aphids. Treat with neem oil or wipe leaves with soapy water, and increase air circulation to deter pests.'),
(3, 'Common Problems', 'Yellowing leaves typically from overwatering or poor drainage, leading to root rot—adjust watering and check soil. Brown crispy edges indicate low humidity; mist or humidify. Drooping can be from over or underwatering—balance moisture levels. Leaf spot diseases occur in high humidity without air flow. Note: Toxic if ingested, causing mouth irritation in pets and humans.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('African Iris', 'Dietes iridioides', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/4.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(4, 'General Info', 'African Iris, also known as Fortnight Lily, is a tough, evergreen perennial with sword-like leaves and iris-like flowers that bloom intermittently. Native to eastern and southern Africa, it is prized for its drought tolerance and ability to add structure to gardens, growing to 2-4 feet tall with white, yellow-marked blooms.'),
(4, 'Care - Light', 'Full sun to partial shade is ideal for abundant blooming; it tolerates some shade but flowers less. In hot climates, afternoon shade prevents leaf scorch, while full sun in cooler areas maximizes growth.'),
(4, 'Care - Soil', 'Adaptable to most soil types, provided they are well-drained to prevent rot; sandy or loamy soils are best. It can handle poor soil but benefits from occasional compost to boost blooming.'),
(4, 'Care - Water', 'Drought-tolerant once established but blooms better with regular watering during dry spells. Water deeply weekly in summer, reducing in winter; avoid overhead watering to prevent fungal issues.'),
(4, 'Care - Temperature', 'Thrives in warm climates, hardy in USDA zones 8-11, but can survive light frosts with protection. It prefers mild temperatures but is resilient in varied conditions.'),
(4, 'Pruning', 'Remove spent flower stalks but don''t cut them to the ground as they can rebloom multiple times. Tidy up dead or brown foliage as needed with sharp shears to maintain appearance and encourage new growth.'),
(4, 'Propagating', 'Easily propagated by dividing clumps in spring or early fall for quick establishment. Can also be grown from seed, though division is faster and ensures true-to-type plants; plant divisions at the same depth as original.'),
(4, 'Growing from Seed', 'Seeds can be sown in spring in well-drained soil, germinating in 2-4 weeks with warmth and moisture. Seedlings take 2-3 years to bloom, so this method is best for patient gardeners.'),
(4, 'Potting and Repotting', 'Can be grown in large containers for patios or balconies; use a standard potting mix with added grit for drainage. Water regularly as pots dry out faster than garden beds, and repot every 3-4 years to refresh.'),
(4, 'Overwintering', 'Hardy in USDA zones 8-11 with no special care needed in mild winters. In colder climates, grow in pots and bring indoors to a cool, bright room, reducing watering to keep soil barely moist.'),
(4, 'Bloom', 'Produces iris-like flowers every two weeks or so in blooming season, hence "Fortnight Lily." Blooms are white with yellow and violet markings, lasting a day but with successive stalks for extended display from spring to fall.'),
(4, 'Common Pests', 'Generally pest-resistant, but occasionally bothered by nematodes or iris borers that tunnel into rhizomes. Monitor for signs and use beneficial nematodes or insecticides if needed.'),
(4, 'Common Problems', 'Root rot occurs in poorly drained soil, causing wilting—improve drainage or plant in raised beds. May fail to bloom in excessive shade or nutrient-poor soil; provide more sun and fertilize lightly. Leaf spots can appear in wet conditions, so ensure good air circulation.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Althea Shrub', 'Hibiscus syriacus', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/5.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(5, 'General Info', 'Althea Shrub, commonly called Rose of Sharon, is a deciduous flowering shrub known for its large, hollyhock-like blooms in summer and fall. It grows 8-12 feet tall, attracting butterflies and hummingbirds, and is versatile in landscapes as hedges or specimens, with varieties in pink, white, blue, and purple.'),
(5, 'Care - Light', 'Full sun is best for prolific flowering, at least 6 hours daily; it tolerates partial shade but blooms less. In very hot areas, some afternoon shade prevents wilting.'),
(5, 'Care - Soil', 'Adaptable to many soil types but prefers moist, well-drained soil with organic matter. Slightly acidic to neutral pH is ideal, and mulching helps retain moisture.'),
(5, 'Care - Water', 'Keep soil moist, especially for young plants; established shrubs are somewhat drought-tolerant but benefit from weekly deep watering during dry periods to support blooming.'),
(5, 'Care - Temperature', 'Hardy in USDA zones 5-8, it withstands cold winters and hot summers but may need protection in extreme cold.'),
(5, 'Pruning', 'Prune in late winter or early spring to shape the plant and encourage larger flowers by removing old wood. Can be trained as a small tree or kept as a shrub by selective cutting; deadhead to extend bloom time.'),
(5, 'Propagating', 'By softwood cuttings taken in summer, rooted in moist soil under humidity, or from seed (though seedlings may not be identical to the parent due to hybridization). Layering is another easy method for rooted branches.'),
(5, 'Growing from Seed', 'Seeds can be started indoors in late winter, germinating in 2-3 weeks with warmth. Transplant outdoors after frost; bloom may take 2-3 years.'),
(5, 'Potting and Repotting', 'Dwarf varieties are suitable for large containers (at least 15 gallons) on patios. Use a high-quality potting mix with good drainage, and repot every few years, pruning roots if necessary.'),
(5, 'Overwintering', 'A hardy deciduous shrub in USDA zones 5-8, in-ground plants need no special care but mulch around the base in cold zones. Potted plants in colder zones should have their containers protected from freezing solid by wrapping or moving to shelter.'),
(5, 'Bloom', 'Known for showy, trumpet-shaped flowers up to 4 inches wide, blooming profusely from mid-summer to frost. Colors vary by variety, and each flower lasts a day but with many buds for continuous display.'),
(5, 'Common Pests', 'Japanese beetles and aphids can be problematic, feeding on leaves and buds; handpick or use insecticidal soap. Deer may browse young plants in some areas.'),
(5, 'Common Problems', 'Bud drop caused by stress from over- or under-watering, sudden temperature changes, or pests—maintain consistent care. Leaf spot and rust are fungal issues in humid conditions; improve air flow and use fungicides. Can self-seed prolifically, becoming invasive in some gardens, so deadhead to control.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Ball Cactus', 'Parodia magnifica', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/6.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(6, 'General Info', 'Ball Cactus, or Parodia magnifica, is a spherical cactus from South America known for its golden spines and bright yellow flowers. It grows slowly to about 6-12 inches in diameter, making it a popular choice for cactus collections and windowsill gardens.'),
(6, 'Care - Light', 'Requires bright, direct sunlight for at least 6 hours daily to maintain its compact shape and promote flowering. South-facing windows are ideal indoors, and outdoor placement in full sun is fine in mild climates.'),
(6, 'Care - Soil', 'Use a fast-draining cactus mix with sand or grit to ensure quick drying and prevent rot. The soil should be poor in nutrients, as rich soil can cause excessive growth and weakness.'),
(6, 'Care - Water', 'Water thoroughly when soil is completely dry in the growing season (spring/summer), about every 2 weeks, and keep almost completely dry in winter to induce dormancy. Overwatering is the leading cause of failure.'),
(6, 'Care - Temperature', 'Prefers warm days (21-32°C) and cooler nights; hardy to about 10°C but protect from frost. Indoor winter temperatures around 10-15°C are ideal for rest.'),
(6, 'Pruning', 'Not necessary for Ball Cactus, as it maintains a neat globular form naturally. Only remove debris or damaged parts if they appear.'),
(6, 'Propagating', 'From offsets (pups) that form at the base; allow the offset to callus for a few days before planting in dry cactus mix. Can also be grown from seed, sown in spring with bottom heat for germination in 1-2 weeks.'),
(6, 'Growing from Seed', 'Seeds germinate readily in a sterile cactus mix kept warm and moist; seedlings need protection from direct sun initially and take years to mature.'),
(6, 'Potting and Repotting', 'Excellent for pots; use a shallow container with excellent drainage, like terra cotta, to allow quick drying. Repot every 3-4 years in spring when roots fill the pot, handling carefully to avoid spine injury.'),
(6, 'Overwintering', 'Bring indoors before frost to a cool, bright, and dry location like a windowsill. Do not water during winter dormancy to prevent rot, resuming in spring with gradual moisture increase.'),
(6, 'Bloom', 'Produces vibrant yellow flowers at the crown in summer, lasting several days each. Blooming requires mature plants (3+ years) and proper winter rest with cool, dry conditions.'),
(6, 'Common Pests', 'Mealybugs (especially at the roots), spider mites, and scale insects can infest; treat with systemic insecticides or alcohol wipes. Root mealybugs are particularly sneaky, so check during repotting.'),
(6, 'Common Problems', 'Root rot from overwatering is the most common problem, causing softening or collapse—cut away affected parts and repot in dry mix. Etiolation (stretching) due to insufficient light makes the plant tall and weak; provide more sun gradually to correct.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Baneberry', 'Actaea', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/7.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(7, 'General Info', 'Baneberry is a woodland perennial in the Actaea genus, known for its feathery white flowers and clusters of berries in red or white, depending on the species. Growing 2-3 feet tall, it is valued in shade gardens for its foliage and toxic berries that attract birds but deter mammals.'),
(7, 'Care - Light', 'Prefers partial to full shade, thriving under tree canopies or in north-facing gardens. Too much sun can scorch leaves, so dappled light is optimal for healthy growth.'),
(7, 'Care - Soil', 'Thrives in consistently moist, rich, well-drained soil with plenty of organic matter like leaf mold. Acidic to neutral pH is best, and mulching helps maintain cool, moist roots.'),
(7, 'Care - Water', 'Keep soil consistently moist, especially in dry periods, but avoid waterlogging. Weekly watering in summer may be needed, less in cooler months.'),
(7, 'Care - Temperature', 'Hardy in USDA zones 3-8, it tolerates cold winters and mild summers but dislikes heat and drought.'),
(7, 'Pruning', 'Not necessary, but cut back foliage in late fall after it has died back to tidy the garden and prepare for winter. Avoid disturbing the roots.'),
(7, 'Propagating', 'By division in spring or fall, separating clumps carefully to avoid damaging the crown. Can be grown from seed, but seeds require a long period of cold, moist stratification (3-6 months) for germination.'),
(7, 'Growing from Seed', 'Sow fresh seeds in fall for natural stratification, or cold-stratify artificially; germination occurs in spring, with plants flowering in 2-3 years.'),
(7, 'Potting and Repotting', 'Not typically grown in pots as it prefers the cool, moist root environment of a shade garden, but possible in large, deep containers with rich mix. Repot rarely due to root sensitivity.'),
(7, 'Overwintering', 'A hardy perennial in USDA zones 3-8; mulch after the ground freezes in colder zones to prevent frost heave and protect shallow roots.'),
(7, 'Bloom', 'Produces plumes of small white flowers in spring, followed by ornamental berries in summer to fall. Blooms last 2-3 weeks, adding texture to shade gardens.'),
(7, 'Common Pests', 'Generally pest and disease-free, with natural resistance due to its toxicity. Occasional slugs in moist conditions.'),
(7, 'Common Problems', 'All parts of the plant, especially the berries, are highly poisonous and should not be ingested, causing severe gastrointestinal distress. Can get rust in very humid conditions—remove affected leaves and improve air flow. Wilting may occur in dry soil.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Bat Flower', 'Tacca chantrieri', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/8.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(8, 'General Info', 'Bat Flower, or Tacca chantrieri, is an exotic tropical perennial famous for its unusual black or purple bat-shaped bracts and long "whiskers." Native to Southeast Asia, it grows 2-3 feet tall and is a conversation piece in humid, shaded indoor or greenhouse settings.'),
(8, 'Care - Light', 'Needs filtered light or shade; no direct sunlight, which burns the leaves. Grow under grow lights or in east-facing windows for gentle morning light.'),
(8, 'Care - Soil', 'Requires a rich, well-draining, airy potting mix similar to an orchid mix with bark and perlite to ensure aeration and prevent compaction.'),
(8, 'Care - Water', 'Keep soil moist but not waterlogged, watering when the top layer dries; use soft water to avoid mineral buildup. Consistent moisture is key in its tropical habitat.'),
(8, 'Care - Humidity', 'Requires high humidity over 50%, ideally 70-80%; use humidifiers, misting, or terrariums to maintain levels and prevent leaf crisping.'),
(8, 'Care - Temperature', 'Warm temperatures between 20-30°C (68-86°F) year-round; avoid below 15°C, as it is sensitive to cold.'),
(8, 'Pruning', 'Remove yellow or dead leaves and spent flower stalks at the base with clean tools to keep the plant healthy and encourage new blooms.'),
(8, 'Propagating', 'By carefully dividing rhizomes in the spring, ensuring each piece has growth points; keep divisions humid and warm until rooted.'),
(8, 'Potting and Repotting', 'Well-suited for pots, which help control its specific soil and moisture needs; ensure excellent drainage with holes. Repot every 2 years in spring to freshen the mix.'),
(8, 'Overwintering', 'A tropical plant that must be brought indoors in non-tropical climates to a warm, humid location away from drafts. Reduce watering if growth slows, but maintain humidity to prevent stress.'),
(8, 'Bloom', 'Produces striking bat-like flowers with long filaments from spring to fall under ideal conditions; each bloom lasts weeks, but the plant may take years to mature enough to flower.'),
(8, 'Common Pests', 'Slugs, snails, and spider mites in low humidity; protect with barriers or insecticides, and increase moisture to deter mites.'),
(8, 'Common Problems', 'Brown, crispy leaf edges from low humidity—boost with misting or trays. Yellowing leaves from overwatering; allow better drainage. Failure to bloom may be due to low light, low humidity, or plant immaturity; provide optimal conditions for 2-3 years.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('BlackBerry Lily', 'Iris domestica', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/9.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(9, 'General Info', 'BlackBerry Lily, formerly Belamcanda chinensis but now Iris domestica, is a perennial with orange-spotted flowers followed by seed pods resembling blackberries. Growing 2-4 feet tall, it adds color to borders and is native to Asia, with fan-like leaves similar to irises.'),
(9, 'Care - Light', 'Prefers full sun for best blooming and sturdy growth; partial shade is tolerated but reduces flowers.'),
(9, 'Care - Soil', 'Well-drained soil is essential; it handles average to poor soils but avoids heavy clay to prevent rot.'),
(9, 'Care - Water', 'Drought-tolerant once established, but consistent moisture during growing season enhances blooms; water weekly in dry weather.'),
(9, 'Care - Temperature', 'Hardy in USDA zones 5-10, it withstands cold winters with mulch and hot summers.'),
(9, 'Pruning', 'Cut back flower stalks after blooming to prevent self-seeding if not desired; foliage can be cut back after it turns yellow in the fall to tidy the plant.'),
(9, 'Propagating', 'By dividing rhizomes every 3-4 years in spring to rejuvenate; self-seeds readily, so collect seeds for controlled planting.'),
(9, 'Growing from Seed', 'Seeds can be sown directly in fall or spring, germinating easily; seedlings bloom in their second year.'),
(9, 'Potting and Repotting', 'Can be grown in medium to large containers with good drainage for mobility; use standard mix and repot when crowded.'),
(9, 'Overwintering', 'A hardy perennial in USDA zones 5-10; in colder zones, a layer of mulch provides good winter protection against freeze-thaw cycles.'),
(9, 'Bloom', 'Orange flowers with red spots bloom in summer, each lasting a day but with successive blooms; followed by ornamental seed pods that split to reveal black seeds.'),
(9, 'Common Pests', 'Iris borers can be a significant pest, tunneling into rhizomes; remove affected parts and use beneficial nematodes.'),
(9, 'Common Problems', 'Root rot in wet, poorly drained soil—amend with grit. Leaf spot from fungi in humid conditions; space plants for air flow.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Bell Pepper', 'Capsicum annuum', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/10.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(10, 'General Info', 'Bell Pepper is an annual vegetable plant in the Capsicum annuum species, producing colorful fruits in green, red, yellow, or orange. Grown for edible peppers, it reaches 2-3 feet tall and is a staple in gardens and kitchens worldwide, originating from Central and South America.'),
(10, 'Care - Light', 'Needs full sun (6-8 hours/day) for strong growth and fruit set; shade reduces yield.'),
(10, 'Care - Soil', 'Plant in rich, well-drained soil with organic matter; pH 6.0-6.8 is ideal for nutrient availability.'),
(10, 'Care - Water', 'Keep soil consistently moist, especially during fruit development, watering 1-2 inches weekly; mulch to retain moisture.'),
(10, 'Care - Temperature', 'Warm-season crop, optimal 21-29°C (70-85°F); protect from frost and temperatures below 15°C.'),
(10, 'Pruning', 'Pinching the growing tip of young plants encourages a bushier habit; staking is often necessary to support heavy fruit and prevent breakage.'),
(10, 'Propagating', 'Grown from seeds; start indoors 8-10 weeks before the last expected frost in seed trays with warmth for germination in 7-14 days.'),
(10, 'Growing from Seed', 'Sow seeds 1/4 inch deep in warm soil (24°C+); harden off seedlings before transplanting outdoors after frost.'),
(10, 'Potting and Repotting', 'Excellent for containers; use at least a 5-gallon pot per plant with drainage holes and a quality potting mix rich in nutrients.'),
(10, 'Overwintering', 'Usually grown as an annual, but can be overwintered indoors in a sunny window with limited production; prune back hard before bringing inside and treat for pests.'),
(10, 'Bloom', 'Small white flowers appear before fruits; pollinate indoors by shaking plants if no bees are present.'),
(10, 'Common Pests', 'Aphids, spider mites, hornworms, and flea beetles; use row covers or organic sprays like neem.'),
(10, 'Common Problems', 'Blossom end rot caused by calcium deficiency and inconsistent watering—add lime and mulch. Sunscald on fruits from direct exposure; provide shade cloth in hot areas. Various fungal and bacterial diseases like powdery mildew; rotate crops and space for air flow.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Black Magic Rose', 'Rosa "Black Magic"', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/11.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(11, 'General Info', 'Black Magic Rose is a hybrid tea rose cultivar known for its deep red, almost black velvety petals and strong fragrance. Growing 4-6 feet tall, it is popular in cut flower gardens and landscapes, bred for disease resistance and long vase life.'),
(11, 'Care - Light', 'Needs at least 6 hours of full sun per day for robust blooming and disease prevention; morning sun is best to dry dew.'),
(11, 'Care - Soil', 'Prefers fertile, well-drained, slightly acidic soil (pH 6.0-6.5); amend with compost for nutrients.'),
(11, 'Care - Water', 'Water deeply and regularly, about 1 inch weekly, at the base to avoid wetting leaves and promoting fungi.'),
(11, 'Care - Temperature', 'Hardy in USDA zones 6-9; protect from extreme cold or heat waves.'),
(11, 'Pruning', 'Prune in late winter/early spring to remove dead, weak, or crossing canes and shape the bush. Deadhead spent flowers to encourage reblooming throughout the season, cutting back to a five-leaflet leaf.'),
(11, 'Propagating', 'From softwood or hardwood cuttings; dip in rooting hormone and plant in moist mix under humidity for 4-8 weeks.'),
(11, 'Potting and Repotting', 'Can be grown in a large pot (at least 15 gallons) with rose-formulated mix; ensure consistent water and feeding, repotting every 2-3 years.'),
(11, 'Overwintering', 'In colder zones (below 6), protect by mounding soil or compost around the base after hard frost. Potted roses should be moved to a sheltered spot like an unheated garage, watering sparingly.'),
(11, 'Bloom', 'Produces large, high-centered blooms in deep red, blooming in flushes from spring to frost with a classic rose scent. Each stem is ideal for cutting.'),
(11, 'Common Pests', 'Aphids, spider mites, Japanese beetles, and thrips; monitor and use horticultural oils or beneficial insects.'),
(11, 'Common Problems', 'Highly susceptible to fungal diseases like black spot and powdery mildew—provide good air circulation, avoid overhead watering, and use preventive fungicides. Rose rosette disease can be fatal; remove infected plants immediately.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Calathea Zebrina', 'Calathea zebrina', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/12.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(12, 'General Info', 'Calathea zebrina, or Zebra Plant, is a tropical houseplant admired for its striped green leaves with purple undersides. Growing 2-3 feet tall, it is part of the prayer plant family, with leaves that fold at night, and is excellent for low-light indoor areas.'),
(12, 'Care - Light', 'Prefers bright, indirect light; direct sun fades patterns, while low light slows growth.'),
(12, 'Care - Soil', 'Use distilled or rainwater with a well-draining, peat-based soil to keep moist without sogginess; add perlite for aeration.'),
(12, 'Care - Water', 'Keep soil consistently moist but not soggy, watering when top inch is dry; use filtered water to avoid leaf spots from chemicals.'),
(12, 'Care - Humidity', 'High humidity is a must, 60%+, to prevent crisping; mist daily or use humidifiers.'),
(12, 'Care - Temperature', 'Warm rooms 18-24°C (65-75°F); avoid drafts or below 15°C.'),
(12, 'Pruning', 'Trim off any brown, yellow, or crispy leaves at the base of the stem to promote health and aesthetics.'),
(12, 'Propagating', 'By division during repotting in the spring; separate rhizomes and pot in humid conditions.'),
(12, 'Potting and Repotting', 'An excellent houseplant for pots; repot every 1-2 years to refresh soil, ensuring good drainage to avoid rot.'),
(12, 'Overwintering', 'Keep away from cold drafts and heating vents; reduce watering slightly as growth slows in low light.'),
(12, 'Bloom', 'Rarely blooms indoors, but may produce small purple flowers on spikes; primarily grown for foliage.'),
(12, 'Common Pests', 'Spider mites, mealybugs, and aphids in dry air; treat with soap sprays and boost humidity.'),
(12, 'Common Problems', 'Crispy brown leaf edges from low humidity or minerals in tap water—use distilled. Yellowing leaves from overwatering; drooping from stress, often improper watering or light.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Calendula', 'Calendula officinalis', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/13.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(13, 'General Info', 'Calendula, or pot marigold, is a cheerful annual with bright orange or yellow daisy-like flowers used in herbal remedies for skin. Growing 1-2 feet tall, it is easy for beginners and attracts pollinators to gardens.'),
(13, 'Care - Light', 'Full sun to light shade; more sun equals more blooms.'),
(13, 'Care - Soil', 'Prefers well-drained, average soil; tolerates poor conditions but avoids wet feet.'),
(13, 'Care - Water', 'Water regularly but do not overwater; drought-tolerant but consistent moisture prevents wilting.'),
(13, 'Care - Temperature', 'Cool-season annual, best in mild climates; heat can shorten bloom time.'),
(13, 'Pruning', 'Deadhead spent flowers regularly to promote continuous blooming and prevent seeding too early; pinch young plants for bushiness.'),
(13, 'Propagating', 'Easily grown from seed sown directly in the garden after last frost; self-seeds prolifically in mild areas.'),
(13, 'Growing from Seed', 'Sow 1/4 inch deep in spring; germination in 7-14 days, blooming in 6-8 weeks.'),
(13, 'Potting and Repotting', 'Grows well in containers with standard potting mix and good drainage; repot seedlings if starting indoors.'),
(13, 'Overwintering', 'Dies with hard frost but in zones 9-11, can bloom through winter; sow in fall for early spring flowers.'),
(13, 'Bloom', 'Bright flowers from spring to frost, edible and used in salads or teas; deadheading extends season.'),
(13, 'Common Pests', 'Aphids and whiteflies; attract beneficial insects or use sprays.'),
(13, 'Common Problems', 'Prone to powdery mildew in humid, crowded conditions—space plants and avoid overhead water.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Camellia', 'Camellia japonica, C. sasanqua', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/14.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(14, 'General Info', 'Camellia is an evergreen shrub with glossy leaves and rose-like flowers in winter to spring. Species like C. japonica and C. sasanqua offer varieties in pink, red, white; grown for ornamental value in acidic soil gardens.'),
(14, 'Care - Light', 'Dappled or partial shade, protected from hot afternoon sun to prevent burn.'),
(14, 'Care - Soil', 'Requires well-drained, acidic, rich soil; use azalea mix for pots.'),
(14, 'Care - Water', 'Keep soil consistently moist; mulch to retain water, avoid drying out.'),
(14, 'Care - Temperature', 'Hardy in zones 6/7-9; protect from extreme cold.'),
(14, 'Pruning', 'Prune only right after flowering to avoid cutting next year''s buds; shape lightly.'),
(14, 'Propagating', 'From semi-hardwood cuttings in late summer, rooted under mist.'),
(14, 'Potting and Repotting', 'Grow in large containers with acidic mix; potted plants need consistent watering, repot every 3 years.'),
(14, 'Overwintering', 'Potted camellias in cold zones move to sheltered location; mulch in-ground plants.'),
(14, 'Bloom', 'Large, showy flowers in winter/spring, lasting weeks; C. sasanqua blooms fall.'),
(14, 'Common Pests', 'Tea scale, aphids, spider mites; treat with oils.'),
(14, 'Common Problems', 'Bud drop from changes in temperature/water; yellow leaves from high pH—acidify soil. Sooty mold from pests, petal blight in wet weather.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Cat Whiskers', 'Orthosiphon aristatus', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/15.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(15, 'General Info', 'Cat Whiskers is a tropical perennial with spiky white or purple flowers resembling cat whiskers. Grown for ornamental and herbal uses (as Java tea for kidney health), it reaches 2-3 feet and thrives in warm gardens.'),
(15, 'Care - Light', 'Full sun to partial shade for best flowering; shade reduces blooms.'),
(15, 'Care - Soil', 'Prefers rich, moist, well-drained soil; add compost for fertility.'),
(15, 'Care - Water', 'Water regularly to keep evenly moist; thirsty in heat, daily in pots.'),
(15, 'Care - Temperature', 'Tender in zones 9-11; treat as annual elsewhere.'),
(15, 'Pruning', 'Pinch back stems to encourage bushier plant with more flowers; cut after bloom.'),
(15, 'Propagating', 'By softwood cuttings in spring/summer, rooted in water or soil.'),
(15, 'Potting and Repotting', 'Excellent for pots/hanging baskets with quality mix; repot annually if root-bound.'),
(15, 'Overwintering', 'Bring indoors as houseplant in cold climates; sunny window, reduce water.'),
(15, 'Bloom', 'Long spikes of tubular flowers summer to fall, attracting bees.'),
(15, 'Common Pests', 'Generally resistant; spider mites indoors—increase humidity.'),
(15, 'Common Problems', 'Wilts when thirsty but recovers; overwatering causes rot.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Cayenne Pepper', 'Capsicum annuum var. "Cayenne"', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/16.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(16, 'General Info', 'Cayenne Pepper is a hot chili variety of Capsicum annuum, producing long red fruits used in spices. Growing 2-4 feet, it is heat-loving and productive in vegetable gardens.'),
(16, 'Care - Light', 'Full sun (6-8 hours) for fruit set; shade lowers yield.'),
(16, 'Care - Soil', 'Rich, well-drained; reduce nitrogen after fruiting for heat.'),
(16, 'Care - Water', 'Evenly moist; inconsistent causes issues.'),
(16, 'Care - Temperature', 'Warm 21-32°C; frost-sensitive.'),
(16, 'Pruning', 'Pinch tips for bushiness; stake for support.'),
(16, 'Propagating', 'From seeds indoors 8-10 weeks pre-frost.'),
(16, 'Growing from Seed', 'Germinate at 24°C+; transplant post-frost.'),
(16, 'Potting and Repotting', 'Ideal for 3-5 gallon pots with drainage.'),
(16, 'Overwintering', 'Indoors pruned back in sun; limited fruit.'),
(16, 'Bloom', 'Small white flowers lead to peppers.'),
(16, 'Common Pests', 'Aphids, flea beetles, hornworms.'),
(16, 'Common Problems', 'Blossom end rot from calcium/water; sunscald, anthracnose.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('China Aster', 'Callistephus chinensis', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/17.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(17, 'General Info', 'China Aster is an annual with daisy-like flowers in vibrant colors for cut arrangements. Growing 1-3 feet, it is cool-season and disease-prone if not rotated.'),
(17, 'Care - Light', 'Full sun for sturdy stems.'),
(17, 'Care - Soil', 'Rich, well-drained; avoid wet.'),
(17, 'Care - Water', 'Consistent, avoid overhead to reduce disease.'),
(17, 'Care - Temperature', 'Cool; heat shortens life.'),
(17, 'Pruning', 'Pinch for bushiness; deadhead for blooms.'),
(17, 'Propagating', 'From seed indoors 6-8 weeks pre-frost or direct sow.'),
(17, 'Growing from Seed', 'Germinate in cool conditions; thin seedlings.'),
(17, 'Potting and Repotting', 'Dwarf in pots with drainage.'),
(17, 'Overwintering', 'Annual, dies with frost.'),
(17, 'Bloom', 'Colorful flowers summer to frost.'),
(17, 'Common Pests', 'Aphids, leafhoppers.'),
(17, 'Common Problems', 'Fusarium/Verticillium wilts, Aster Yellows; rotate sites.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Delphinium', 'Delphinium', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/18.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(18, 'General Info', 'Delphinium is a tall perennial with spires of blue, purple, or white flowers for cottage gardens. Growing 3-6 feet, it needs support and is short-lived but spectacular.'),
(18, 'Care - Light', 'Full sun for tall spikes.'),
(18, 'Care - Soil', 'Rich, fertile, well-drained, neutral-alkaline.'),
(18, 'Care - Water', 'Moist; heavy drinker.'),
(18, 'Care - Temperature', 'Zones 3-7; cool summers best.'),
(18, 'Pruning', 'Cut spikes after bloom for second flush; cut to ground in fall.'),
(18, 'Propagating', 'Basal cuttings or seed with stratification.'),
(18, 'Growing from Seed', 'Cold stratify; slow to flower.'),
(18, 'Potting and Repotting', 'Large deep pots with support.'),
(18, 'Overwintering', 'Hardy; avoid wet winter soil.'),
(18, 'Bloom', 'Tall spires in summer, rebloom possible.'),
(18, 'Common Pests', 'Slugs, aphids, mites.'),
(18, 'Common Problems', 'Powdery mildew, crown rot, brittle stems.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Dahlia', 'Dahlia', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/19.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(19, 'General Info', 'Dahlia is a tuberous perennial with diverse flower forms and colors for summer displays. Heights vary from 1-6 feet, native to Mexico, dug up in cold climates.'),
(19, 'Care - Light', 'Full sun (6+ hours).'),
(19, 'Care - Soil', 'Rich, well-drained.'),
(19, 'Care - Water', 'Deep, regular.'),
(19, 'Care - Temperature', 'Zones 8+; annual elsewhere.'),
(19, 'Pruning', 'Pinch for bushiness; deadhead.'),
(19, 'Propagating', 'Divide tubers in spring.'),
(19, 'Potting and Repotting', 'Dwarf in 5+ gallon pots.'),
(19, 'Overwintering', 'Dig tubers, store dry in cool place.'),
(19, 'Bloom', 'Varied flowers summer to frost.'),
(19, 'Common Pests', 'Slugs, earwigs, aphids.'),
(19, 'Common Problems', 'Powdery mildew, tuber rot.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Daylily', 'Hemerocallis', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/20.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(20, 'General Info', 'Daylily is a hardy perennial with trumpet flowers lasting one day each, but many buds. Low-maintenance, 1-4 feet, for borders.'),
(20, 'Care - Light', 'Full sun for max blooms.'),
(20, 'Care - Soil', 'Well-drained; adaptable.'),
(20, 'Care - Water', 'Consistent; drought-tolerant once established.'),
(20, 'Care - Temperature', 'Zones 3-9.'),
(20, 'Pruning', 'Remove spent scapes; clean foliage spring/fall.'),
(20, 'Propagating', 'Divide every 3-5 years.'),
(20, 'Potting and Repotting', 'Large containers; water more.'),
(20, 'Overwintering', 'No special care.'),
(20, 'Bloom', 'Colorful flowers mid-summer.'),
(20, 'Common Pests', 'Aphids, thrips.'),
(20, 'Common Problems', 'Few; shade or crowd reduces bloom.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Dendrobium Orchid', 'Dendrobium', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/21.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(21, 'General Info', 'Dendrobium orchid is an epiphytic genus with cane-like stems and showy flowers. Popular houseplant, varieties need cool rest for blooms.'),
(21, 'Care - Light', 'Bright, filtered.'),
(21, 'Care - Soil', 'Coarse bark mix.'),
(21, 'Care - Water', 'When nearly dry; winter rest.'),
(21, 'Care - Humidity', 'Moderate 50%.'),
(21, 'Care - Temperature', 'Warm days, cool nights; winter 10-13°C.'),
(21, 'Pruning', 'Dead canes only; keep old pseudobulbs.'),
(21, 'Propagating', 'Divide or keikis.'),
(21, 'Potting and Repotting', 'Orchid pots; repot 2-3 years.'),
(21, 'Overwintering', 'Cool, dry rest no fertilizer.'),
(21, 'Bloom', 'Sprays of flowers after rest.'),
(21, 'Common Pests', 'Mealybugs, scale, mites.'),
(21, 'Common Problems', 'No bloom from no rest; root rot.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Dittany', 'Dictamnus albus', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/22.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(22, 'General Info', 'Dittany, or Gas Plant, is a long-lived perennial with lemon-scented leaves and pink/white flowers. Slow to establish, 2-3 feet, oils ignite in heat.'),
(22, 'Care - Light', 'Full sun.'),
(22, 'Care - Soil', 'Deep, fertile, well-drained, alkaline.'),
(22, 'Care - Water', 'Drought-tolerant once established.'),
(22, 'Care - Temperature', 'Zones 3-8.'),
(22, 'Pruning', 'Cut stalks fall.'),
(22, 'Propagating', 'Seed when fresh; division hard.'),
(22, 'Growing from Seed', 'Fresh seeds; 3+ years to flower.'),
(22, 'Potting and Repotting', 'Not recommended due to taproot.'),
(22, 'Overwintering', 'No protection needed.'),
(22, 'Bloom', 'Spikes in summer.'),
(22, 'Common Pests', 'Free of pests.'),
(22, 'Common Problems', 'Slow maturity; skin rash from oils in sun.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Easter Cactus', 'Hatiora gaertneri', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/23.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(23, 'General Info', 'Easter Cactus is a segmented succulent cactus with pink/red flowers in spring. Epiphytic, trailing 1-2 feet, for hanging baskets.'),
(23, 'Care - Light', 'Bright, indirect.'),
(23, 'Care - Soil', 'Well-draining with bark.'),
(23, 'Care - Water', 'When top inch dry.'),
(23, 'Care - Humidity', 'Moderate.'),
(23, 'Care - Temperature', 'Cool rest 10°C for buds.'),
(23, 'Pruning', 'Twist segments after flower for fullness.'),
(23, 'Propagating', 'Segment cuttings callus then plant.'),
(23, 'Potting and Repotting', 'Pots; slightly root-bound.'),
(23, 'Overwintering', 'Cool, dry, dark 12-14 hours for bloom.'),
(23, 'Bloom', 'Star-shaped flowers Easter time.'),
(23, 'Common Pests', 'Mealybugs, mites.'),
(23, 'Common Problems', 'Bud drop from changes; rot, red segments from sun.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Edelweiss', 'Leontopodium nivale', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/24.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(24, 'General Info', 'Edelweiss is an alpine perennial with woolly white flowers symbolizing rugged beauty. Short-lived, 6-12 inches, for rock gardens.'),
(24, 'Care - Light', 'Full sun.'),
(24, 'Care - Soil', 'Gritty, well-drained, alkaline.'),
(24, 'Care - Water', 'Low; intolerant of wet.'),
(24, 'Care - Temperature', 'Zones 4-7; cool, dry winters.'),
(24, 'Pruning', 'Remove spent if desired.'),
(24, 'Propagating', 'Seed with stratification or division.'),
(24, 'Growing from Seed', 'Cold stratify; slow growth.'),
(24, 'Potting and Repotting', 'Terra cotta with alpine mix.'),
(24, 'Overwintering', 'Protect from winter wet.'),
(24, 'Bloom', 'Star-like bracts summer.'),
(24, 'Common Pests', 'Slugs, snails.'),
(24, 'Common Problems', 'Crown rot from wet; hard in heat/humidity.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Estragon', 'Artemisia dracunculus', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/25.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(25, 'General Info', 'Estragon, or French Tarragon, is a culinary herb with anise-flavored leaves for cooking. Perennial, 2 feet, sterile so propagate vegetatively.'),
(25, 'Care - Light', 'Full sun.'),
(25, 'Care - Soil', 'Well-drained, sandy; dislikes rich/wet.'),
(25, 'Care - Water', 'Moderate; drought-tolerant.'),
(25, 'Care - Temperature', 'Zones 5-8.'),
(25, 'Pruning', 'Harvest regularly; cut back mid-summer.'),
(25, 'Propagating', 'Root division or cuttings; no viable seed.'),
(25, 'Potting and Repotting', 'Containers with sand mix.'),
(25, 'Overwintering', 'Mulch in cold zones.'),
(25, 'Bloom', 'Rare, insignificant; pinch to prevent.'),
(25, 'Common Pests', 'Pest-free.'),
(25, 'Common Problems', 'Root rot in poor drainage; rust in humidity.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('English Bluebells', 'Hyacinthoides non-scripta', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/26.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(26, 'General Info', 'English Bluebells are spring bulbs with nodding blue flowers for woodlands. Spread via bulbs, avoid invasive Spanish type.'),
(26, 'Care - Light', 'Partial/dappled shade.'),
(26, 'Care - Soil', 'Moist, well-drained, organic.'),
(26, 'Care - Water', 'Moist in growth; dry dormant.'),
(26, 'Care - Temperature', 'Zones 4-7.'),
(26, 'Pruning', 'Let foliage die naturally.'),
(26, 'Propagating', 'Divide dormant bulbs.'),
(26, 'Potting and Repotting', 'Deep pots in fall.'),
(26, 'Overwintering', 'No care needed.'),
(26, 'Bloom', 'Bell-shaped blue in spring.'),
(26, 'Common Pests', 'Pest-free.'),
(26, 'Common Problems', 'Spreads vigorously; confuse with invasive hybrid.');

INSERT INTO plants (name, scientific_name, image_url) VALUES 
('Elatior Begonia', 'Begonia x hiemalis', 'https://wtgtwdzjjlizwgjikwfe.supabase.co/storage/v1/object/public/plant-images/27.jpg');
INSERT INTO plant_sections (plant_id, section_name, content) VALUES
(27, 'General Info', 'Elatior Begonia, or Rieger Begonia, is a hybrid with continuous blooms in bright colors. Houseplant or annual, 1-2 feet, for shade.'),
(27, 'Care - Light', 'Bright, indirect.'),
(27, 'Care - Soil', 'Light, porous, well-draining.'),
(27, 'Care - Water', 'Consistently moist; avoid leaves.'),
(27, 'Care - Humidity', 'High to prevent mildew.'),
(27, 'Care - Temperature', '15-21°C.'),
(27, 'Pruning', 'Pinch spent flowers; prune leggy.'),
(27, 'Propagating', 'Stem/leaf cuttings.'),
(27, 'Potting and Repotting', 'Pots or baskets with drainage.'),
(27, 'Overwintering', 'Difficult to rebloom; often discard.'),
(27, 'Bloom', 'Clusters year-round indoors.'),
(27, 'Common Pests', 'Mealybugs, aphids, whiteflies.'),
(27, 'Common Problems', 'Powdery mildew, botrytis, rot from poor air/water.');


SELECT * FROM plants p,plant_sections s WHERE p.id=s.plant_id;