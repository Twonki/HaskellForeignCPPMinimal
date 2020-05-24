{-# LANGUAGE ForeignFunctionInterface #-}

module CPPLib where

foreign import ccall safe "some.h multiply" 
    c_multiply :: Int -> Int -> Int

multiplyByTwo :: Int -> Int 
multiplyByTwo = c_multiply 2