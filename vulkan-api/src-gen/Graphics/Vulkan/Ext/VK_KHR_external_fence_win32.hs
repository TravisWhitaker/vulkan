{-# OPTIONS_GHC -fno-warn-orphans#-}
{-# OPTIONS_HADDOCK not-home#-}
{-# LANGUAGE CPP                      #-}
{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE FlexibleInstances        #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE MagicHash                #-}
{-# LANGUAGE PatternSynonyms          #-}
{-# LANGUAGE Strict                   #-}
{-# LANGUAGE TypeFamilies             #-}
{-# LANGUAGE ViewPatterns             #-}
module Graphics.Vulkan.Ext.VK_KHR_external_fence_win32
       (-- * Vulkan extension: @VK_KHR_external_fence_win32@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Jesse Hall @critsec@
        --
        -- author: @KHR@
        --
        -- type: @device@
        --
        -- platform: @win32@
        --
        -- Extension number: @115@
        --
        -- Required extensions: 'VK_KHR_external_fence'.
        --

        -- ** Required extensions: 'VK_KHR_external_fence'.
        VkExportFenceWin32HandleInfoKHR,
        VkExternalFenceFeatureBitmask(..),
        VkExternalFenceHandleTypeBitmask(..),
        VkExternalMemoryFeatureBitmask(..),
        VkExternalMemoryFeatureBitmaskNV(..),
        VkExternalMemoryHandleTypeBitmaskNV(..),
        VkExternalMemoryHandleTypeBitmask(..),
        VkExternalSemaphoreFeatureBitmask(..),
        VkExternalSemaphoreHandleTypeBitmask(..),
        VkExternalFenceFeatureFlagBits(),
        VkExternalFenceFeatureFlagBitsKHR(..),
        VkExternalFenceFeatureFlags(), VkExternalFenceHandleTypeFlagBits(),
        VkExternalFenceHandleTypeFlagBitsKHR(..),
        VkExternalFenceHandleTypeFlags(),
        VkExternalMemoryFeatureFlagBits(),
        VkExternalMemoryFeatureFlagBitsKHR(..),
        VkExternalMemoryFeatureFlagBitsNV(),
        VkExternalMemoryFeatureFlags(), VkExternalMemoryFeatureFlagsNV(),
        VkExternalMemoryHandleTypeFlagBits(),
        VkExternalMemoryHandleTypeFlagBitsKHR(..),
        VkExternalMemoryHandleTypeFlagBitsNV(),
        VkExternalMemoryHandleTypeFlags(),
        VkExternalMemoryHandleTypeFlagsNV(),
        VkExternalSemaphoreFeatureFlagBits(),
        VkExternalSemaphoreFeatureFlagBitsKHR(..),
        VkExternalSemaphoreFeatureFlags(),
        VkExternalSemaphoreHandleTypeFlagBits(),
        VkExternalSemaphoreHandleTypeFlagBitsKHR(..),
        VkExternalSemaphoreHandleTypeFlags(), VkFenceCreateBitmask(..),
        VkFenceImportBitmask(..), VkFenceCreateFlagBits(),
        VkFenceCreateFlags(), VkFenceImportFlagBits(),
        VkFenceImportFlagBitsKHR(..), VkFenceImportFlags(),
        VkFenceCreateInfo, VkFenceGetWin32HandleInfoKHR, VkBool32(..),
        VkDeviceSize(..), VkFlags(..), VkSampleMask(..),
        VkImportFenceWin32HandleInfoKHR, VkStructureType(..),
        -- > #include "vk_platform.h"
        VkImportFenceWin32HandleKHR, pattern VkImportFenceWin32HandleKHR,
        HS_vkImportFenceWin32HandleKHR, PFN_vkImportFenceWin32HandleKHR,
        VkGetFenceWin32HandleKHR, pattern VkGetFenceWin32HandleKHR,
        HS_vkGetFenceWin32HandleKHR, PFN_vkGetFenceWin32HandleKHR,
        module Graphics.Vulkan.Marshal, VkResult(..), VkBuffer,
        VkBufferView, VkBufferView_T(), VkBuffer_T(), VkCommandBuffer,
        VkCommandBuffer_T(), VkCommandPool, VkCommandPool_T(),
        VkDebugReportCallbackEXT, VkDebugReportCallbackEXT_T(),
        VkDebugUtilsMessengerEXT, VkDebugUtilsMessengerEXT_T(),
        VkDescriptorPool, VkDescriptorPool_T(), VkDescriptorSet,
        VkDescriptorSetLayout, VkDescriptorSetLayout_T(),
        VkDescriptorSet_T(), VkDescriptorUpdateTemplate,
        VkDescriptorUpdateTemplateKHR, VkDescriptorUpdateTemplateKHR_T(),
        VkDescriptorUpdateTemplate_T(), VkDevice, VkDeviceMemory,
        VkDeviceMemory_T(), VkDevice_T(), VkDisplayKHR, VkDisplayKHR_T(),
        VkDisplayModeKHR, VkDisplayModeKHR_T(), VkEvent, VkEvent_T(),
        VkFence, VkFence_T(), VkFramebuffer, VkFramebuffer_T(), VkImage,
        VkImageView, VkImageView_T(), VkImage_T(),
        VkIndirectCommandsLayoutNVX, VkIndirectCommandsLayoutNVX_T(),
        VkInstance, VkInstance_T(), VkObjectTableNVX, VkObjectTableNVX_T(),
        VkPhysicalDevice, VkPhysicalDevice_T(), VkPipeline,
        VkPipelineCache, VkPipelineCache_T(), VkPipelineLayout,
        VkPipelineLayout_T(), VkPipeline_T(), VkQueryPool, VkQueryPool_T(),
        VkQueue, VkQueue_T(), VkRenderPass, VkRenderPass_T(), VkSampler,
        VkSamplerYcbcrConversion, VkSamplerYcbcrConversionKHR,
        VkSamplerYcbcrConversionKHR_T(), VkSamplerYcbcrConversion_T(),
        VkSampler_T(), VkSemaphore, VkSemaphore_T(), VkShaderModule,
        VkShaderModule_T(), VkSurfaceKHR, VkSurfaceKHR_T(), VkSwapchainKHR,
        VkSwapchainKHR_T(), VkValidationCacheEXT, VkValidationCacheEXT_T(),
        DWORD, Display, HANDLE, HINSTANCE, HWND, LPCWSTR, MirConnection,
        MirSurface, RROutput, SECURITY_ATTRIBUTES, VisualID, Window,
        WlDisplay, WlSurface, XcbConnectionT, XcbVisualidT, XcbWindowT,
        VkD3D12FenceSubmitInfoKHR, VkExportMemoryWin32HandleInfoKHR,
        VkExportMemoryWin32HandleInfoNV,
        VkExportSemaphoreWin32HandleInfoKHR,
        VkImportMemoryWin32HandleInfoKHR, VkImportMemoryWin32HandleInfoNV,
        VkImportSemaphoreWin32HandleInfoKHR, VkMemoryGetWin32HandleInfoKHR,
        VkMemoryWin32HandlePropertiesKHR, VkSemaphoreGetWin32HandleInfoKHR,
        VkWin32KeyedMutexAcquireReleaseInfoKHR,
        VkWin32KeyedMutexAcquireReleaseInfoNV, VkWin32SurfaceCreateInfoKHR,
        VK_KHR_EXTERNAL_FENCE_WIN32_SPEC_VERSION,
        pattern VK_KHR_EXTERNAL_FENCE_WIN32_SPEC_VERSION,
        VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME,
        pattern VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_IMPORT_FENCE_WIN32_HANDLE_INFO_KHR,
        pattern VK_STRUCTURE_TYPE_EXPORT_FENCE_WIN32_HANDLE_INFO_KHR,
        pattern VK_STRUCTURE_TYPE_FENCE_GET_WIN32_HANDLE_INFO_KHR)
       where
import GHC.Ptr                                       (Ptr (..))
import Graphics.Vulkan.Marshal
import Graphics.Vulkan.Marshal.Proc                  (VulkanProc (..))
import Graphics.Vulkan.Types.BaseTypes
import Graphics.Vulkan.Types.Enum.External
import Graphics.Vulkan.Types.Enum.Fence
import Graphics.Vulkan.Types.Enum.Result
import Graphics.Vulkan.Types.Enum.StructureType
import Graphics.Vulkan.Types.Handles
import Graphics.Vulkan.Types.Include
import Graphics.Vulkan.Types.Struct.Fence            (VkFenceCreateInfo)
import Graphics.Vulkan.Types.Struct.PlatformWin32Khr

pattern VkImportFenceWin32HandleKHR :: CString

pattern VkImportFenceWin32HandleKHR <-
        (is_VkImportFenceWin32HandleKHR -> True)
  where
    VkImportFenceWin32HandleKHR = _VkImportFenceWin32HandleKHR

{-# INLINE _VkImportFenceWin32HandleKHR #-}

_VkImportFenceWin32HandleKHR :: CString
_VkImportFenceWin32HandleKHR
  = Ptr "vkImportFenceWin32HandleKHR\NUL"#

{-# INLINE is_VkImportFenceWin32HandleKHR #-}

is_VkImportFenceWin32HandleKHR :: CString -> Bool
is_VkImportFenceWin32HandleKHR
  = (EQ ==) . cmpCStrings _VkImportFenceWin32HandleKHR

type VkImportFenceWin32HandleKHR = "vkImportFenceWin32HandleKHR"

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_INVALID_EXTERNAL_HANDLE'.
--
--   > VkResult vkImportFenceWin32HandleKHR
--   >     ( VkDevice device
--   >     , const VkImportFenceWin32HandleInfoKHR* pImportFenceWin32HandleInfo
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkImportFenceWin32HandleKHR vkImportFenceWin32HandleKHR registry at www.khronos.org>
type HS_vkImportFenceWin32HandleKHR =
     VkDevice -- ^ device
              -> Ptr VkImportFenceWin32HandleInfoKHR -- ^ pImportFenceWin32HandleInfo
                                                     -> IO VkResult

type PFN_vkImportFenceWin32HandleKHR =
     FunPtr HS_vkImportFenceWin32HandleKHR

foreign import ccall unsafe "dynamic"
               unwrapVkImportFenceWin32HandleKHRUnsafe ::
               PFN_vkImportFenceWin32HandleKHR -> HS_vkImportFenceWin32HandleKHR

foreign import ccall safe "dynamic"
               unwrapVkImportFenceWin32HandleKHRSafe ::
               PFN_vkImportFenceWin32HandleKHR -> HS_vkImportFenceWin32HandleKHR

instance VulkanProc "vkImportFenceWin32HandleKHR" where
    type VkProcType "vkImportFenceWin32HandleKHR" =
         HS_vkImportFenceWin32HandleKHR
    vkProcSymbol = _VkImportFenceWin32HandleKHR

    {-# INLINE vkProcSymbol #-}
    unwrapVkProcPtrUnsafe = unwrapVkImportFenceWin32HandleKHRUnsafe

    {-# INLINE unwrapVkProcPtrUnsafe #-}
    unwrapVkProcPtrSafe = unwrapVkImportFenceWin32HandleKHRSafe

    {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkGetFenceWin32HandleKHR :: CString

pattern VkGetFenceWin32HandleKHR <-
        (is_VkGetFenceWin32HandleKHR -> True)
  where
    VkGetFenceWin32HandleKHR = _VkGetFenceWin32HandleKHR

{-# INLINE _VkGetFenceWin32HandleKHR #-}

_VkGetFenceWin32HandleKHR :: CString
_VkGetFenceWin32HandleKHR = Ptr "vkGetFenceWin32HandleKHR\NUL"#

{-# INLINE is_VkGetFenceWin32HandleKHR #-}

is_VkGetFenceWin32HandleKHR :: CString -> Bool
is_VkGetFenceWin32HandleKHR
  = (EQ ==) . cmpCStrings _VkGetFenceWin32HandleKHR

type VkGetFenceWin32HandleKHR = "vkGetFenceWin32HandleKHR"

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_TOO_MANY_OBJECTS', 'VK_ERROR_OUT_OF_HOST_MEMORY'.
--
--   > VkResult vkGetFenceWin32HandleKHR
--   >     ( VkDevice device
--   >     , const VkFenceGetWin32HandleInfoKHR* pGetWin32HandleInfo
--   >     , HANDLE* pHandle
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetFenceWin32HandleKHR vkGetFenceWin32HandleKHR registry at www.khronos.org>
type HS_vkGetFenceWin32HandleKHR =
     VkDevice -- ^ device
              ->
       Ptr VkFenceGetWin32HandleInfoKHR -- ^ pGetWin32HandleInfo
                                        -> Ptr HANDLE -- ^ pHandle
                                                      -> IO VkResult

type PFN_vkGetFenceWin32HandleKHR =
     FunPtr HS_vkGetFenceWin32HandleKHR

foreign import ccall unsafe "dynamic"
               unwrapVkGetFenceWin32HandleKHRUnsafe ::
               PFN_vkGetFenceWin32HandleKHR -> HS_vkGetFenceWin32HandleKHR

foreign import ccall safe "dynamic"
               unwrapVkGetFenceWin32HandleKHRSafe ::
               PFN_vkGetFenceWin32HandleKHR -> HS_vkGetFenceWin32HandleKHR

instance VulkanProc "vkGetFenceWin32HandleKHR" where
    type VkProcType "vkGetFenceWin32HandleKHR" =
         HS_vkGetFenceWin32HandleKHR
    vkProcSymbol = _VkGetFenceWin32HandleKHR

    {-# INLINE vkProcSymbol #-}
    unwrapVkProcPtrUnsafe = unwrapVkGetFenceWin32HandleKHRUnsafe

    {-# INLINE unwrapVkProcPtrUnsafe #-}
    unwrapVkProcPtrSafe = unwrapVkGetFenceWin32HandleKHRSafe

    {-# INLINE unwrapVkProcPtrSafe #-}

pattern VK_KHR_EXTERNAL_FENCE_WIN32_SPEC_VERSION ::
        (Num a, Eq a) => a

pattern VK_KHR_EXTERNAL_FENCE_WIN32_SPEC_VERSION = 1

type VK_KHR_EXTERNAL_FENCE_WIN32_SPEC_VERSION = 1

pattern VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME :: CString

pattern VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME <-
        (is_VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME -> True)
  where
    VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME
      = _VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME

{-# INLINE _VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME #-}

_VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME :: CString
_VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME
  = Ptr "VK_KHR_external_fence_win32\NUL"#

{-# INLINE is_VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME #-}

is_VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME :: CString -> Bool
is_VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME
  = (EQ ==) . cmpCStrings _VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME

type VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME =
     "VK_KHR_external_fence_win32"

pattern VK_STRUCTURE_TYPE_IMPORT_FENCE_WIN32_HANDLE_INFO_KHR ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_IMPORT_FENCE_WIN32_HANDLE_INFO_KHR =
        VkStructureType 1000114000

pattern VK_STRUCTURE_TYPE_EXPORT_FENCE_WIN32_HANDLE_INFO_KHR ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_EXPORT_FENCE_WIN32_HANDLE_INFO_KHR =
        VkStructureType 1000114001

pattern VK_STRUCTURE_TYPE_FENCE_GET_WIN32_HANDLE_INFO_KHR ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_FENCE_GET_WIN32_HANDLE_INFO_KHR =
        VkStructureType 1000114002
