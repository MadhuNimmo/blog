#!/bin/bash
str=('@babel/plugin-proposal-decorators' '@babel/plugin-proposal-duplicate-named-capturing-groups-regex' 
      '@babel/plugin-proposal-export-default-from' '@babel/plugin-transform-for-of' 
      '@babel/plugin-proposal-async-generator-functions' '@babel/plugin-transform-async-to-generator' 
      '@babel/plugin-transform-regenerator' '@babel/plugin-proposal-do-expressions'
      '@babel/plugin-proposal-export-namespace-from' '@babel/plugin-proposal-function-bind' 
      '@babel/plugin-proposal-function-sent' '@babel/plugin-proposal-partial-application' 
      '@babel/plugin-proposal-pipeline-operator' '@babel/plugin-proposal-private-methods' 
      '@babel/plugin-proposal-class-properties'  
      '@babel/plugin-proposal-class-static-block' '@babel/plugin-proposal-private-property-in-object' 
      '@babel/plugin-syntax-top-level-await' '@babel/plugin-proposal-logical-assignment-operators' 
      '@babel/plugin-proposal-numeric-separator' '@babel/plugin-proposal-optional-chaining' 
      '@babel/plugin-syntax-dynamic-import' 
      '@babel/plugin-syntax-import-meta' '@babel/plugin-syntax-bigint' 
      '@babel/plugin-proposal-optional-catch-binding' '@babel/plugin-proposal-json-strings' 
      '@babel/plugin-transform-dotall-regex' '@babel/plugin-transform-named-capturing-groups-regex' 
      '@babel/plugin-proposal-object-rest-spread' '@babel/plugin-proposal-unicode-property-regex' 
      '@babel/plugin-transform-arrow-functions' 
      '@babel/plugin-transform-block-scoped-functions' '@babel/plugin-transform-block-scoping' 
      '@babel/plugin-transform-classes' '@babel/plugin-transform-computed-properties' 
      '@babel/plugin-transform-destructuring' '@babel/plugin-transform-duplicate-keys' 
      '@babel/plugin-transform-function-name' '@babel/plugin-transform-literals' 
      '@babel/plugin-transform-new-target' '@babel/plugin-transform-object-super' 
      '@babel/plugin-transform-parameters' '@babel/plugin-transform-shorthand-properties' 
      '@babel/plugin-transform-spread' '@babel/plugin-transform-sticky-regex' 
      '@babel/plugin-transform-template-literals' '@babel/plugin-transform-unicode-escapes' 
      '@babel/plugin-transform-unicode-regex'  
      '@babel/plugin-proposal-throw-expressions' '@babel/plugin-proposal-record-and-tuple' 
      '@babel/plugin-proposal-nullish-coalescing-operator' '@babel/plugin-transform-exponentiation-operator' 
      'babel-plugin-remove-use-strict' 'metro-react-native-babel-preset' )
for i in "${str[@]}"
do
npm i --save-dev $i
done
