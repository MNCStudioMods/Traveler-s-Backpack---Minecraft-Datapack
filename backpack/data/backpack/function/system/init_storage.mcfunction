# Initialize storage structures (preserve existing data on reload)
execute unless data storage backpack:data version run data modify storage backpack:data {} set value {version:1,players:{}}
execute unless data storage backpack:meta version run data modify storage backpack:meta {} set value {version:"1.0.0",mc:"1.21.x",release:"Production Release"}
execute unless data storage backpack:temp {} run data modify storage backpack:temp {} set value {}
