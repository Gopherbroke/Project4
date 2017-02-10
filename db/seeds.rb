# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Clear the database before reseeding
# Piece.delete_all
# User.delete_all
# Comment.delete_all

# Initialize some pieces
fountain_for_gone = Piece.create name:"Fountain For Gone", description:"Maybe we are each somebody.", style:"Sculpture", image_url:"http://pre08.deviantart.net/f9df/th/pre/i/2013/296/2/6/abstract_sculpture_by_silverandres22-d6rjrrh.jpg", price:950
reappearance_of_silent_life = Piece.create name:"Reappearance of Silence", description:"A very painful experience.", style:"Sculpture", image_url:"http://img10.deviantart.net/a664/i/2014/131/0/d/abstract_sculpture_by_dannydkart-d63hsp9.jpg", price:1250
hallucinogen = Piece.create name:"Hallucinogen", description:"Consciousness, is a tragic misstep in evolution.", style:"Sculpture", image_url:"https://s-media-cache-ak0.pinimg.com/736x/76/64/74/766474f5ae2da4d9d401e3fc29778077.jpg", price:600
motion_of_a_cog = Piece.create name:"Motion of A Cog", description:"An aspect of nature separate from itself.", style:"Sculpture", image_url:"http://www.brucegray.com/images/brownie2.jpg", price:775
trapped_in_wax = Piece.create name:"Trapped in Wax", description:"The illusion of having a self.", style:"Sculpture", image_url:"http://www.artnet.com/WebServices/images/ll818134llg6DFC3CfDrCWSXHXJAD/henry-klimowicz-plated-and-cut.jpg", price:500

material_vs_mental = Piece.create name:"Material vs Mental", description:"Walk hand in hand.", style:"Watercolor", image_url:"https://i.ytimg.com/vi/pchJz762I64/maxresdefault.jpg", price:185
energy_and_contrast = Piece.create name:"Energy & Contrast", description:"Sisters opting out of a raw deal.", style:"Watercolor", image_url:"http://paintingandframe.com/uploadpic/pol_ledent/big/abstract_watercolor_012130.jpg", price:185
one_April = Piece.create name:"1 April", description:"Life’s barely long enough to get good at one thing. So be careful what you get good at.
", style:"Watercolor", image_url:"https://i.ytimg.com/vi/ExjelsS-sKI/maxresdefault.jpg", price:185
mystic_spirit = Piece.create name:"Mystic Spirit", description:"I know who I am.", style:"Watercolor", image_url:"http://1.bp.blogspot.com/-K7Ri4lPckP0/Th-v10k-vNI/AAAAAAAABuQ/S1QU9RHGSyU/w1200-h630-p-k-nu/Abstract+Watercolor+1.jpg", price:205
meditative_penance = Piece.create name:"Meditative Penance", description:"The expectation of divine reward.", style:"Watercolor", image_url:"https://upload.wikimedia.org/wikipedia/commons/b/bb/First_abstract_watercolor_kandinsky_1910.jpg", price:205


collapse = Piece.create name:"Collapse", description:"Get together and tell yourself stories that violate every law of the universe.", style:"Sketch", image_url:"https://images.template.net/wp-content/uploads/2015/10/31195757/Bold-Abstract-Drawing.jpg", price:95
blue_forever = Piece.create name:"Blue Forever", description:"Once there was only dark.", style:"Sketch", image_url:"https://s-media-cache-ak0.pinimg.com/564x/b6/46/72/b64672eaae9c4556c20f337fbc42d70c.jpg", price:95
song_of_peace = Piece.create name:"Song of Peace", description:"A life trap.", style:"Sketch", image_url:"https://images.template.net/wp-content/uploads/2015/10/31190100/Abstract-Woman-Face-Drawing-For-You.jpg", price:105
my_infernal_structure = Piece.create name:"My Infernal Structure", description:"Nothing’s ever fulfilled, Nothing is ever over.", style:"Sketch", image_url:"https://thumbs.dreamstime.com/z/abstract-drawing-black-ink-made-paper-34490342.jpg", price:105
absolutism = Piece.create name:"Absolutism", description:"Death created time to grow the things that it would kill.", style:"Sketch", image_url:"http://s3.amazonaws.com/inarticles/ac27bd1e547f43c2bf0adde3e101187a.jpg", price:150
