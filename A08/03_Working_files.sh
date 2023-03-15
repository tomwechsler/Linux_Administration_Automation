#Working on ubuntu

#Create directory path
mkdir -p ~/cookbooks/hello/recipes

#Create the recipes
vim ~/cookbooks/hello/recipes/default.rb

file "#{ENV['HOME']}/hello.txt" do
 content 'HELLO WORLD'
end

#Save and exit

#Run it
chef-client -z -o hello

cat ~/hello.txt

ls -la hello.txt

#Edit the file
vim ~/cookbooks/hello/recipes/default.rb

file "#{ENV['HOME']}/hello.txt" do
 content "This is line 1\nand this is line 2\n"
 mode '0700'
end

#Save and exit

#Run it agina
chef-client -z -o hello

cat ~/hello.txt

ls -la hello.txt



Starting with a basic file, we can extend this by adding in permissions and
multilinie content.