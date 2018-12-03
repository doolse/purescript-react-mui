module MaterialUI.Tablelvl2Context where
import Data.TSCompat (OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classTablelvl2Context :: forall a. ReactClass a

type Tablelvl2ContextPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  )
 | r)

type Tablelvl2ContextPropsM  = (
  variant :: OneOf (
    typed :: StringConst "body", 
    typed :: StringConst "head", 
    typed :: StringConst "footer"
  )
)

tablelvl2Context :: forall a. IsTSEq (Record a) (OptionRecord (Tablelvl2ContextPropsO Tablelvl2ContextPropsM) Tablelvl2ContextPropsM) => Record a -> Array ReactElement -> ReactElement
tablelvl2Context = unsafeCreateElement classTablelvl2Context

tablelvl2Context_ :: Array ReactElement -> ReactElement
tablelvl2Context_ = unsafeCreateElement classTablelvl2Context {}

tablelvl2Context' :: forall a. IsTSEq (Record a) (OptionRecord (Tablelvl2ContextPropsO Tablelvl2ContextPropsM) Tablelvl2ContextPropsM) => Record a -> ReactElement
tablelvl2Context' = unsafeCreateLeafElement classTablelvl2Context