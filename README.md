# Teste Zup

## INSTALL
1. Download this repo

2. From with in unpacked folder, run these commands to install Bundler and Cucumber

`sudo gem install bundler`

`bundle install`

3.Install Chrome for your OS

## Executing a desktop test for Americanas' purchase flow 
`bundle exec cucumber --tags @checkPurchaseFlow -p json`


## Usage
  After running the test, to generate the report.html run the command `ruby reports.rb`
    
