{-# OPTIONS_GHC -fno-warn-missing-pattern-synonym-signatures#-}
{-# OPTIONS_GHC -fno-warn-orphans#-}
{-# OPTIONS_HADDOCK not-home#-}
{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE FlexibleInstances        #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE MagicHash                #-}
{-# LANGUAGE PatternSynonyms          #-}
{-# LANGUAGE Strict                   #-}
{-# LANGUAGE TypeFamilies             #-}
{-# LANGUAGE ViewPatterns             #-}
module Graphics.Vulkan.Ext.VK_EXT_validation_cache
       (-- * Vulkan extension: @VK_EXT_validation_cache@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Cort Stratton @cdwfs@
        --
        -- author: @GOOGLE@
        --
        -- type: @device@
        --
        -- Extension number: @161@
        module Graphics.Vulkan.Marshal,
        module Graphics.Vulkan.Types.BaseTypes,
        module Graphics.Vulkan.Types.Bitmasks,
        module Graphics.Vulkan.Types.Struct.VkShaderModuleCreateInfo,
        module Graphics.Vulkan.Types.Struct.VkShaderModuleValidationCacheCreateInfoEXT,
        module Graphics.Vulkan.Types.Enum.VkStructureType,
        module Graphics.Vulkan.Types.Struct.VkValidationCacheCreateInfoEXT,
        module Graphics.Vulkan.Types.Enum.VkValidationCacheHeaderVersionEXT,
        -- > #include "vk_platform.h"
        VkCreateValidationCacheEXT, pattern VkCreateValidationCacheEXT,
        HS_vkCreateValidationCacheEXT, PFN_vkCreateValidationCacheEXT,
        unwrapVkCreateValidationCacheEXT, VkDestroyValidationCacheEXT,
        pattern VkDestroyValidationCacheEXT,
        HS_vkDestroyValidationCacheEXT, PFN_vkDestroyValidationCacheEXT,
        unwrapVkDestroyValidationCacheEXT, VkMergeValidationCachesEXT,
        pattern VkMergeValidationCachesEXT, HS_vkMergeValidationCachesEXT,
        PFN_vkMergeValidationCachesEXT, unwrapVkMergeValidationCachesEXT,
        VkGetValidationCacheDataEXT, pattern VkGetValidationCacheDataEXT,
        HS_vkGetValidationCacheDataEXT, PFN_vkGetValidationCacheDataEXT,
        unwrapVkGetValidationCacheDataEXT,
        module Graphics.Vulkan.Types.Enum.VkInternalAllocationType,
        module Graphics.Vulkan.Types.Enum.VkResult,
        module Graphics.Vulkan.Types.Enum.VkSystemAllocationScope,
        module Graphics.Vulkan.Types.Funcpointers,
        module Graphics.Vulkan.Types.Handles,
        module Graphics.Vulkan.Types.Struct.VkAllocationCallbacks,
        VK_EXT_VALIDATION_CACHE_SPEC_VERSION,
        pattern VK_EXT_VALIDATION_CACHE_SPEC_VERSION,
        VK_EXT_VALIDATION_CACHE_EXTENSION_NAME,
        pattern VK_EXT_VALIDATION_CACHE_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_VALIDATION_CACHE_CREATE_INFO_EXT,
        pattern VK_STRUCTURE_TYPE_SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT,
        pattern VK_OBJECT_TYPE_VALIDATION_CACHE_EXT,
        pattern VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT)
       where
import           GHC.Ptr
                                                                                          (Ptr (..))
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Proc
                                                                                          (VulkanProc (..))
import           Graphics.Vulkan.Types.BaseTypes
import           Graphics.Vulkan.Types.Bitmasks
import           Graphics.Vulkan.Types.Enum.VkDebugReportObjectTypeEXT
                                                                                          (VkDebugReportObjectTypeEXT (..))
import           Graphics.Vulkan.Types.Enum.VkInternalAllocationType
import           Graphics.Vulkan.Types.Enum.VkObjectType
                                                                                          (VkObjectType (..))
import           Graphics.Vulkan.Types.Enum.VkResult
import           Graphics.Vulkan.Types.Enum.VkStructureType
import           Graphics.Vulkan.Types.Enum.VkSystemAllocationScope
import           Graphics.Vulkan.Types.Enum.VkValidationCacheHeaderVersionEXT
import           Graphics.Vulkan.Types.Funcpointers
import           Graphics.Vulkan.Types.Handles
import           Graphics.Vulkan.Types.Struct.VkAllocationCallbacks
import           Graphics.Vulkan.Types.Struct.VkShaderModuleCreateInfo
import           Graphics.Vulkan.Types.Struct.VkShaderModuleValidationCacheCreateInfoEXT
import           Graphics.Vulkan.Types.Struct.VkValidationCacheCreateInfoEXT

pattern VkCreateValidationCacheEXT :: CString

pattern VkCreateValidationCacheEXT <-
        (is_VkCreateValidationCacheEXT -> True)
  where VkCreateValidationCacheEXT = _VkCreateValidationCacheEXT

{-# INLINE _VkCreateValidationCacheEXT #-}

_VkCreateValidationCacheEXT :: CString
_VkCreateValidationCacheEXT = Ptr "vkCreateValidationCacheEXT\NUL"#

{-# INLINE is_VkCreateValidationCacheEXT #-}

is_VkCreateValidationCacheEXT :: CString -> Bool
is_VkCreateValidationCacheEXT
  = (EQ ==) . cmpCStrings _VkCreateValidationCacheEXT

type VkCreateValidationCacheEXT = "vkCreateValidationCacheEXT"

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY'.
--
--   > VkResult vkCreateValidationCacheEXT
--   >     ( VkDevice device
--   >     , const VkValidationCacheCreateInfoEXT* pCreateInfo
--   >     , const VkAllocationCallbacks* pAllocator
--   >     , VkValidationCacheEXT* pValidationCache
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCreateValidationCacheEXTvkCreateValidationCacheEXT registry at www.khronos.org>
type HS_vkCreateValidationCacheEXT =
     VkDevice -- ^ device
              ->
       Ptr VkValidationCacheCreateInfoEXT -- ^ pCreateInfo
                                          ->
         Ptr VkAllocationCallbacks -- ^ pAllocator
                                   ->
           Ptr VkValidationCacheEXT -- ^ pValidationCache
                                    -> IO VkResult

type PFN_vkCreateValidationCacheEXT =
     FunPtr HS_vkCreateValidationCacheEXT

foreign import ccall "dynamic" unwrapVkCreateValidationCacheEXT ::
               PFN_vkCreateValidationCacheEXT -> HS_vkCreateValidationCacheEXT

instance VulkanProc "vkCreateValidationCacheEXT" where
        type VkProcType "vkCreateValidationCacheEXT" =
             HS_vkCreateValidationCacheEXT
        vkProcSymbol = _VkCreateValidationCacheEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkCreateValidationCacheEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VkDestroyValidationCacheEXT :: CString

pattern VkDestroyValidationCacheEXT <-
        (is_VkDestroyValidationCacheEXT -> True)
  where VkDestroyValidationCacheEXT = _VkDestroyValidationCacheEXT

{-# INLINE _VkDestroyValidationCacheEXT #-}

_VkDestroyValidationCacheEXT :: CString
_VkDestroyValidationCacheEXT
  = Ptr "vkDestroyValidationCacheEXT\NUL"#

{-# INLINE is_VkDestroyValidationCacheEXT #-}

is_VkDestroyValidationCacheEXT :: CString -> Bool
is_VkDestroyValidationCacheEXT
  = (EQ ==) . cmpCStrings _VkDestroyValidationCacheEXT

type VkDestroyValidationCacheEXT = "vkDestroyValidationCacheEXT"

-- | > () vkDestroyValidationCacheEXT
--   >     ( VkDevice device
--   >     , VkValidationCacheEXT validationCache
--   >     , const VkAllocationCallbacks* pAllocator
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkDestroyValidationCacheEXTvkDestroyValidationCacheEXT registry at www.khronos.org>
type HS_vkDestroyValidationCacheEXT =
     VkDevice -- ^ device
              ->
       VkValidationCacheEXT -- ^ validationCache
                            -> Ptr VkAllocationCallbacks -- ^ pAllocator
                                                         -> IO ()

type PFN_vkDestroyValidationCacheEXT =
     FunPtr HS_vkDestroyValidationCacheEXT

foreign import ccall "dynamic" unwrapVkDestroyValidationCacheEXT ::
               PFN_vkDestroyValidationCacheEXT -> HS_vkDestroyValidationCacheEXT

instance VulkanProc "vkDestroyValidationCacheEXT" where
        type VkProcType "vkDestroyValidationCacheEXT" =
             HS_vkDestroyValidationCacheEXT
        vkProcSymbol = _VkDestroyValidationCacheEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkDestroyValidationCacheEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VkMergeValidationCachesEXT :: CString

pattern VkMergeValidationCachesEXT <-
        (is_VkMergeValidationCachesEXT -> True)
  where VkMergeValidationCachesEXT = _VkMergeValidationCachesEXT

{-# INLINE _VkMergeValidationCachesEXT #-}

_VkMergeValidationCachesEXT :: CString
_VkMergeValidationCachesEXT = Ptr "vkMergeValidationCachesEXT\NUL"#

{-# INLINE is_VkMergeValidationCachesEXT #-}

is_VkMergeValidationCachesEXT :: CString -> Bool
is_VkMergeValidationCachesEXT
  = (EQ ==) . cmpCStrings _VkMergeValidationCachesEXT

type VkMergeValidationCachesEXT = "vkMergeValidationCachesEXT"

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkMergeValidationCachesEXT
--   >     ( VkDevice device
--   >     , VkValidationCacheEXT dstCache
--   >     , uint32_t srcCacheCount
--   >     , const VkValidationCacheEXT* pSrcCaches
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkMergeValidationCachesEXTvkMergeValidationCachesEXT registry at www.khronos.org>
type HS_vkMergeValidationCachesEXT =
     VkDevice -- ^ device
              ->
       VkValidationCacheEXT -- ^ dstCache
                            ->
         Word32 -- ^ srcCacheCount
                -> Ptr VkValidationCacheEXT -- ^ pSrcCaches
                                            -> IO VkResult

type PFN_vkMergeValidationCachesEXT =
     FunPtr HS_vkMergeValidationCachesEXT

foreign import ccall "dynamic" unwrapVkMergeValidationCachesEXT ::
               PFN_vkMergeValidationCachesEXT -> HS_vkMergeValidationCachesEXT

instance VulkanProc "vkMergeValidationCachesEXT" where
        type VkProcType "vkMergeValidationCachesEXT" =
             HS_vkMergeValidationCachesEXT
        vkProcSymbol = _VkMergeValidationCachesEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkMergeValidationCachesEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VkGetValidationCacheDataEXT :: CString

pattern VkGetValidationCacheDataEXT <-
        (is_VkGetValidationCacheDataEXT -> True)
  where VkGetValidationCacheDataEXT = _VkGetValidationCacheDataEXT

{-# INLINE _VkGetValidationCacheDataEXT #-}

_VkGetValidationCacheDataEXT :: CString
_VkGetValidationCacheDataEXT
  = Ptr "vkGetValidationCacheDataEXT\NUL"#

{-# INLINE is_VkGetValidationCacheDataEXT #-}

is_VkGetValidationCacheDataEXT :: CString -> Bool
is_VkGetValidationCacheDataEXT
  = (EQ ==) . cmpCStrings _VkGetValidationCacheDataEXT

type VkGetValidationCacheDataEXT = "vkGetValidationCacheDataEXT"

-- | Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkGetValidationCacheDataEXT
--   >     ( VkDevice device
--   >     , VkValidationCacheEXT validationCache
--   >     , size_t* pDataSize
--   >     , void* pData
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetValidationCacheDataEXTvkGetValidationCacheDataEXT registry at www.khronos.org>
type HS_vkGetValidationCacheDataEXT =
     VkDevice -- ^ device
              ->
       VkValidationCacheEXT -- ^ validationCache
                            -> Ptr CSize -- ^ pDataSize
                                         -> Ptr Void -- ^ pData
                                                     -> IO VkResult

type PFN_vkGetValidationCacheDataEXT =
     FunPtr HS_vkGetValidationCacheDataEXT

foreign import ccall "dynamic" unwrapVkGetValidationCacheDataEXT ::
               PFN_vkGetValidationCacheDataEXT -> HS_vkGetValidationCacheDataEXT

instance VulkanProc "vkGetValidationCacheDataEXT" where
        type VkProcType "vkGetValidationCacheDataEXT" =
             HS_vkGetValidationCacheDataEXT
        vkProcSymbol = _VkGetValidationCacheDataEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkGetValidationCacheDataEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VK_EXT_VALIDATION_CACHE_SPEC_VERSION :: (Num a, Eq a) => a

pattern VK_EXT_VALIDATION_CACHE_SPEC_VERSION = 1

type VK_EXT_VALIDATION_CACHE_SPEC_VERSION = 1

pattern VK_EXT_VALIDATION_CACHE_EXTENSION_NAME :: CString

pattern VK_EXT_VALIDATION_CACHE_EXTENSION_NAME <-
        (is_VK_EXT_VALIDATION_CACHE_EXTENSION_NAME -> True)
  where VK_EXT_VALIDATION_CACHE_EXTENSION_NAME
          = _VK_EXT_VALIDATION_CACHE_EXTENSION_NAME

{-# INLINE _VK_EXT_VALIDATION_CACHE_EXTENSION_NAME #-}

_VK_EXT_VALIDATION_CACHE_EXTENSION_NAME :: CString
_VK_EXT_VALIDATION_CACHE_EXTENSION_NAME
  = Ptr "VK_EXT_validation_cache\NUL"#

{-# INLINE is_VK_EXT_VALIDATION_CACHE_EXTENSION_NAME #-}

is_VK_EXT_VALIDATION_CACHE_EXTENSION_NAME :: CString -> Bool
is_VK_EXT_VALIDATION_CACHE_EXTENSION_NAME
  = (EQ ==) . cmpCStrings _VK_EXT_VALIDATION_CACHE_EXTENSION_NAME

type VK_EXT_VALIDATION_CACHE_EXTENSION_NAME =
     "VK_EXT_validation_cache"

pattern VK_STRUCTURE_TYPE_VALIDATION_CACHE_CREATE_INFO_EXT ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_VALIDATION_CACHE_CREATE_INFO_EXT =
        VkStructureType 1000160000

pattern VK_STRUCTURE_TYPE_SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT
        = VkStructureType 1000160001

-- | VkValidationCacheEXT
pattern VK_OBJECT_TYPE_VALIDATION_CACHE_EXT :: VkObjectType

pattern VK_OBJECT_TYPE_VALIDATION_CACHE_EXT =
        VkObjectType 1000160000

pattern VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT =
        VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT_EXT
