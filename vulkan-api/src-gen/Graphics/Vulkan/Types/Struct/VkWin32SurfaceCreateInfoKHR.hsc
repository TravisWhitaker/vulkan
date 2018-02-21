#include "vulkan/vulkan.h"

{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MagicHash             #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE Strict                #-}
{-# LANGUAGE TypeFamilies          #-}
module Graphics.Vulkan.Types.Struct.VkWin32SurfaceCreateInfoKHR
       (VkWin32SurfaceCreateInfoKHR(..)) where
import           Foreign.Storable                           (Storable (..))
import           GHC.Prim
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Internal
import           Graphics.Vulkan.Types.Bitmasks             (VkWin32SurfaceCreateFlagsKHR)
import           Graphics.Vulkan.Types.Enum.VkStructureType (VkStructureType)
import           Graphics.Vulkan.Types.Include              (HINSTANCE, HWND)
import           Graphics.Vulkan.Types.StructMembers
import           System.IO.Unsafe                           (unsafeDupablePerformIO)

-- | > typedef struct VkWin32SurfaceCreateInfoKHR {
--   >     VkStructureType sType;
--   >     const void*                      pNext;
--   >     VkWin32SurfaceCreateFlagsKHR   flags;
--   >     HINSTANCE                        hinstance;
--   >     HWND                             hwnd;
--   > } VkWin32SurfaceCreateInfoKHR;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0-extensions/man/html/VkWin32SurfaceCreateInfoKHR.html VkWin32SurfaceCreateInfoKHR registry at www.khronos.org>
data VkWin32SurfaceCreateInfoKHR = VkWin32SurfaceCreateInfoKHR## Addr##
                                                                ByteArray##

instance Eq VkWin32SurfaceCreateInfoKHR where
        (VkWin32SurfaceCreateInfoKHR## a _) ==
          x@(VkWin32SurfaceCreateInfoKHR## b _)
          = EQ == cmpBytes## (sizeOf x) a b

        {-# INLINE (==) #-}

instance Ord VkWin32SurfaceCreateInfoKHR where
        (VkWin32SurfaceCreateInfoKHR## a _) `compare`
          x@(VkWin32SurfaceCreateInfoKHR## b _) = cmpBytes## (sizeOf x) a b

        {-# INLINE compare #-}

instance Storable VkWin32SurfaceCreateInfoKHR where
        sizeOf ~_ = #{size VkWin32SurfaceCreateInfoKHR}

        {-# INLINE sizeOf #-}
        alignment ~_ = #{alignment VkWin32SurfaceCreateInfoKHR}

        {-# INLINE alignment #-}
        peek = peekVkData##

        {-# INLINE peek #-}
        poke = pokeVkData##

        {-# INLINE poke #-}

instance VulkanMarshalPrim VkWin32SurfaceCreateInfoKHR where
        unsafeAddr (VkWin32SurfaceCreateInfoKHR## a _) = a

        {-# INLINE unsafeAddr #-}
        unsafeByteArray (VkWin32SurfaceCreateInfoKHR## _ b) = b

        {-# INLINE unsafeByteArray #-}
        unsafeFromByteArrayOffset off b
          = VkWin32SurfaceCreateInfoKHR##
              (plusAddr## (byteArrayContents## b) off)
              b

        {-# INLINE unsafeFromByteArrayOffset #-}

instance VulkanMarshal VkWin32SurfaceCreateInfoKHR where
        type StructFields VkWin32SurfaceCreateInfoKHR =
             '["sType", "pNext", "flags", "hinstance", "hwnd"] -- ' closing tick for hsc2hs
        type CUnionType VkWin32SurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type ReturnedOnly VkWin32SurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type StructExtends VkWin32SurfaceCreateInfoKHR = '[] -- ' closing tick for hsc2hs

instance {-# OVERLAPPING #-} HasVkSType VkWin32SurfaceCreateInfoKHR
         where
        type VkSTypeMType VkWin32SurfaceCreateInfoKHR = VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkWin32SurfaceCreateInfoKHR, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkWin32SurfaceCreateInfoKHR, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkWin32SurfaceCreateInfoKHR, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkWin32SurfaceCreateInfoKHR, sType}

instance {-# OVERLAPPING #-}
         HasField "sType" VkWin32SurfaceCreateInfoKHR where
        type FieldType "sType" VkWin32SurfaceCreateInfoKHR =
             VkStructureType
        type FieldOptional "sType" VkWin32SurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "sType" VkWin32SurfaceCreateInfoKHR =
             #{offset VkWin32SurfaceCreateInfoKHR, sType}
        type FieldIsArray "sType" VkWin32SurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkWin32SurfaceCreateInfoKHR, sType}

instance CanReadField "sType" VkWin32SurfaceCreateInfoKHR where
        {-# INLINE getField #-}
        getField = vkSType

        {-# INLINE readField #-}
        readField = readVkSType

instance CanWriteField "sType" VkWin32SurfaceCreateInfoKHR where
        {-# INLINE writeField #-}
        writeField = writeVkSType

instance {-# OVERLAPPING #-} HasVkPNext VkWin32SurfaceCreateInfoKHR
         where
        type VkPNextMType VkWin32SurfaceCreateInfoKHR = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkWin32SurfaceCreateInfoKHR, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkWin32SurfaceCreateInfoKHR, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkWin32SurfaceCreateInfoKHR, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkWin32SurfaceCreateInfoKHR, pNext}

instance {-# OVERLAPPING #-}
         HasField "pNext" VkWin32SurfaceCreateInfoKHR where
        type FieldType "pNext" VkWin32SurfaceCreateInfoKHR = Ptr Void
        type FieldOptional "pNext" VkWin32SurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pNext" VkWin32SurfaceCreateInfoKHR =
             #{offset VkWin32SurfaceCreateInfoKHR, pNext}
        type FieldIsArray "pNext" VkWin32SurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkWin32SurfaceCreateInfoKHR, pNext}

instance CanReadField "pNext" VkWin32SurfaceCreateInfoKHR where
        {-# INLINE getField #-}
        getField = vkPNext

        {-# INLINE readField #-}
        readField = readVkPNext

instance CanWriteField "pNext" VkWin32SurfaceCreateInfoKHR where
        {-# INLINE writeField #-}
        writeField = writeVkPNext

instance {-# OVERLAPPING #-} HasVkFlags VkWin32SurfaceCreateInfoKHR
         where
        type VkFlagsMType VkWin32SurfaceCreateInfoKHR =
             VkWin32SurfaceCreateFlagsKHR

        {-# NOINLINE vkFlags #-}
        vkFlags x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkWin32SurfaceCreateInfoKHR, flags})

        {-# INLINE vkFlagsByteOffset #-}
        vkFlagsByteOffset ~_
          = #{offset VkWin32SurfaceCreateInfoKHR, flags}

        {-# INLINE readVkFlags #-}
        readVkFlags p
          = peekByteOff p #{offset VkWin32SurfaceCreateInfoKHR, flags}

        {-# INLINE writeVkFlags #-}
        writeVkFlags p
          = pokeByteOff p #{offset VkWin32SurfaceCreateInfoKHR, flags}

instance {-# OVERLAPPING #-}
         HasField "flags" VkWin32SurfaceCreateInfoKHR where
        type FieldType "flags" VkWin32SurfaceCreateInfoKHR =
             VkWin32SurfaceCreateFlagsKHR
        type FieldOptional "flags" VkWin32SurfaceCreateInfoKHR = 'True -- ' closing tick for hsc2hs
        type FieldOffset "flags" VkWin32SurfaceCreateInfoKHR =
             #{offset VkWin32SurfaceCreateInfoKHR, flags}
        type FieldIsArray "flags" VkWin32SurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = True

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkWin32SurfaceCreateInfoKHR, flags}

instance CanReadField "flags" VkWin32SurfaceCreateInfoKHR where
        {-# INLINE getField #-}
        getField = vkFlags

        {-# INLINE readField #-}
        readField = readVkFlags

instance CanWriteField "flags" VkWin32SurfaceCreateInfoKHR where
        {-# INLINE writeField #-}
        writeField = writeVkFlags

instance {-# OVERLAPPING #-}
         HasVkHinstance VkWin32SurfaceCreateInfoKHR where
        type VkHinstanceMType VkWin32SurfaceCreateInfoKHR = HINSTANCE

        {-# NOINLINE vkHinstance #-}
        vkHinstance x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkWin32SurfaceCreateInfoKHR, hinstance})

        {-# INLINE vkHinstanceByteOffset #-}
        vkHinstanceByteOffset ~_
          = #{offset VkWin32SurfaceCreateInfoKHR, hinstance}

        {-# INLINE readVkHinstance #-}
        readVkHinstance p
          = peekByteOff p #{offset VkWin32SurfaceCreateInfoKHR, hinstance}

        {-# INLINE writeVkHinstance #-}
        writeVkHinstance p
          = pokeByteOff p #{offset VkWin32SurfaceCreateInfoKHR, hinstance}

instance {-# OVERLAPPING #-}
         HasField "hinstance" VkWin32SurfaceCreateInfoKHR where
        type FieldType "hinstance" VkWin32SurfaceCreateInfoKHR = HINSTANCE
        type FieldOptional "hinstance" VkWin32SurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "hinstance" VkWin32SurfaceCreateInfoKHR =
             #{offset VkWin32SurfaceCreateInfoKHR, hinstance}
        type FieldIsArray "hinstance" VkWin32SurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkWin32SurfaceCreateInfoKHR, hinstance}

instance CanReadField "hinstance" VkWin32SurfaceCreateInfoKHR where
        {-# INLINE getField #-}
        getField = vkHinstance

        {-# INLINE readField #-}
        readField = readVkHinstance

instance CanWriteField "hinstance" VkWin32SurfaceCreateInfoKHR
         where
        {-# INLINE writeField #-}
        writeField = writeVkHinstance

instance {-# OVERLAPPING #-} HasVkHwnd VkWin32SurfaceCreateInfoKHR
         where
        type VkHwndMType VkWin32SurfaceCreateInfoKHR = HWND

        {-# NOINLINE vkHwnd #-}
        vkHwnd x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkWin32SurfaceCreateInfoKHR, hwnd})

        {-# INLINE vkHwndByteOffset #-}
        vkHwndByteOffset ~_
          = #{offset VkWin32SurfaceCreateInfoKHR, hwnd}

        {-# INLINE readVkHwnd #-}
        readVkHwnd p
          = peekByteOff p #{offset VkWin32SurfaceCreateInfoKHR, hwnd}

        {-# INLINE writeVkHwnd #-}
        writeVkHwnd p
          = pokeByteOff p #{offset VkWin32SurfaceCreateInfoKHR, hwnd}

instance {-# OVERLAPPING #-}
         HasField "hwnd" VkWin32SurfaceCreateInfoKHR where
        type FieldType "hwnd" VkWin32SurfaceCreateInfoKHR = HWND
        type FieldOptional "hwnd" VkWin32SurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "hwnd" VkWin32SurfaceCreateInfoKHR =
             #{offset VkWin32SurfaceCreateInfoKHR, hwnd}
        type FieldIsArray "hwnd" VkWin32SurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkWin32SurfaceCreateInfoKHR, hwnd}

instance CanReadField "hwnd" VkWin32SurfaceCreateInfoKHR where
        {-# INLINE getField #-}
        getField = vkHwnd

        {-# INLINE readField #-}
        readField = readVkHwnd

instance CanWriteField "hwnd" VkWin32SurfaceCreateInfoKHR where
        {-# INLINE writeField #-}
        writeField = writeVkHwnd

instance Show VkWin32SurfaceCreateInfoKHR where
        showsPrec d x
          = showString "VkWin32SurfaceCreateInfoKHR {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkFlags = " .
                            showsPrec d (vkFlags x) .
                              showString ", " .
                                showString "vkHinstance = " .
                                  showsPrec d (vkHinstance x) .
                                    showString ", " .
                                      showString "vkHwnd = " . showsPrec d (vkHwnd x) . showChar '}'