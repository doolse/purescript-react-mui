module MaterialUI.MergeWithListContext where
import Data.TSCompat (OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classMergeWithListContext :: forall a. ReactClass a

type MergeWithListContextPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  dense :: Boolean
 | r)

type MergeWithListContextPropsM  = (
)

mergeWithListContext :: forall a. IsTSEq (Record a) (OptionRecord (MergeWithListContextPropsO MergeWithListContextPropsM) MergeWithListContextPropsM) => Record a -> Array ReactElement -> ReactElement
mergeWithListContext = unsafeCreateElement classMergeWithListContext

mergeWithListContext_ :: Array ReactElement -> ReactElement
mergeWithListContext_ = unsafeCreateElement classMergeWithListContext {}

mergeWithListContext' :: forall a. IsTSEq (Record a) (OptionRecord (MergeWithListContextPropsO MergeWithListContextPropsM) MergeWithListContextPropsM) => Record a -> ReactElement
mergeWithListContext' = unsafeCreateLeafElement classMergeWithListContext