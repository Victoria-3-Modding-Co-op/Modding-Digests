# Release 1.13.9
## Breaking Change
`enactment_time_mult` has been replaced with `enactment_speed_mult`.

I recommend doing putting all instances of `enactment_time_mult` through  `y = 1/(1+x)-1` and then rounding the result to get an effect as close as possible to what was before.
## Major Modding Feature
Country definitions and cultures can now have a `seal_and_signature_texture` parameter.

This parameter points to a DDS file representing the seal and signature on treaties.

There are generic fallback ones defined. The culture one is used when it is defined and finally the country one wins over both others. I have attached an [example file](images/seal_and_signature_texture.png) from the base game.
## Data Type Documentation 
 * [Table of Contents](changes_data_types.md#table-of-contents)
 * [Types](changes_data_types.md#types)
 * [Global Promotes](changes_data_types.md#global-promotes)
## Script Documentation 
 * [Table of Contents](changes_script_docs.md#table-of-contents)
 * [Effects](changes_script_docs.md#effects)
 * [Triggers](changes_script_docs.md#triggers)
 * [Event Targets](changes_script_docs.md#event-targets)
 * [Iterators](changes_script_docs.md#iterators)
 * [On Actions](changes_script_docs.md#on-actions)
## File Changes
There are file changes.
A detailed list can be found below.

**Link:** [File Changes](./changes_files.md)