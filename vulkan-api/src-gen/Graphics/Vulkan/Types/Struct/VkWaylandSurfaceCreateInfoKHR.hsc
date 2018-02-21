#include "vulkan/vulkan.h"

{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MagicHash             #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE Strict                #-}
{-# LANGUAGE TypeFamilies          #-}
module Graphics.Vulkan.Types.Struct.VkWaylandSurfaceCreateInfoKHR
       (VkWaylandSurfaceCreateInfoKHR(..)) where
import           Foreign.Storable                           (Storable (..))
import           GHC.Prim
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Internal
import           Graphics.Vulkan.Types.Bitmasks             (VkWaylandSurfaceCreateFlagsKHR)
import           Graphics.Vulkan.Types.Enum.VkStructureType (VkStructureType)
import           Graphics.Vulkan.Types.Include              (WlDisplay,
                                                             WlSurface)
import           Graphics.Vulkan.Types.StructMembers
import           System.IO.Unsafe                           (unsafeDupablePerformIO)

-- | > typedef struct VkWaylandSurfaceCreateInfoKHR {
--   >     VkStructureType sType;
--   >     const void*                      pNext;
--   >     VkWaylandSurfaceCreateFlagsKHR   flags;
--   >     struct wl_display*               display;
--   >     struct wl_surface*               surface;
--   > } VkWaylandSurfaceCreateInfoKHR;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0-extensions/man/html/VkWaylandSurfaceCreateInfoKHR.html VkWaylandSurfaceCreateInfoKHR registry at www.khronos.org>
data VkWaylandSurfaceCreateInfoKHR = VkWaylandSurfaceCreateInfoKHR## Addr##
                                                                    ByteArray##

instance Eq VkWaylandSurfaceCreateInfoKHR where
        (VkWaylandSurfaceCreateInfoKHR## a _) ==
          x@(VkWaylandSurfaceCreateInfoKHR## b _)
          = EQ == cmpBytes## (sizeOf x) a b

        {-# INLINE (==) #-}

instance Ord VkWaylandSurfaceCreateInfoKHR where
        (VkWaylandSurfaceCreateInfoKHR## a _) `compare`
          x@(VkWaylandSurfaceCreateInfoKHR## b _) = cmpBytes## (sizeOf x) a b

        {-# INLINE compare #-}

instance Storable VkWaylandSurfaceCreateInfoKHR where
        sizeOf ~_ = #{size VkWaylandSurfaceCreateInfoKHR}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkWaylandSurfaceCreateInfoKHR}

        {-# INLINE alignment #-}
        peek = peekVkData##

        {-# INLINE peek #-}
        poke = pokeVkData##

        {-# INLINE poke #-}

instance VulkanMarshalPrim VkWaylandSurfaceCreateInfoKHR where
        unsafeAddr (VkWaylandSurfaceCreateInfoKHR## a _) = a

        {-# INLINE unsafeAddr #-}
        unsafeByteArray (VkWaylandSurfaceCreateInfoKHR## _ b) = b

        {-# INLINE unsafeByteArray #-}
        unsafeFromByteArrayOffset off b
          = VkWaylandSurfaceCreateInfoKHR##
              (plusAddr## (byteArrayContents## b) off)
              b

        {-# INLINE unsafeFromByteArrayOffset #-}

instance VulkanMarshal VkWaylandSurfaceCreateInfoKHR where
        type StructFields VkWaylandSurfaceCreateInfoKHR =
             '["sType", "pNext", "flags", "display", "surface"] -- ' closing tick for hsc2hs
        type CUnionType VkWaylandSurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type ReturnedOnly VkWaylandSurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type StructExtends VkWaylandSurfaceCreateInfoKHR = '[] -- ' closing tick for hsc2hs

instance {-# OVERLAPPING #-}
         HasVkSType VkWaylandSurfaceCreateInfoKHR where
        type VkSTypeMType VkWaylandSurfaceCreateInfoKHR = VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkWaylandSurfaceCreateInfoKHR, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkWaylandSurfaceCreateInfoKHR, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkWaylandSurfaceCreateInfoKHR, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkWaylandSurfaceCreateInfoKHR, sType}

instance {-# OVERLAPPING #-}
         HasField "sType" VkWaylandSurfaceCreateInfoKHR where
        type FieldType "sType" VkWaylandSurfaceCreateInfoKHR =
             VkStructureType
        type FieldOptional "sType" VkWaylandSurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "sType" VkWaylandSurfaceCreateInfoKHR =
             #{offset VkWaylandSurfaceCreateInfoKHR, sType}
        type FieldIsArray "sType" VkWaylandSurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkWaylandSurfaceCreateInfoKHR, sType}

instance CanReadField "sType" VkWaylandSurfaceCreateInfoKHR where
        {-# INLINE getField #-}
        getField = vkSType

        {-# INLINE readField #-}
        readField = readVkSType

instance CanWriteField "sType" VkWaylandSurfaceCreateInfoKHR where
        {-# INLINE writeField #-}
        writeField = writeVkSType

instance {-# OVERLAPPING #-}
         HasVkPNext VkWaylandSurfaceCreateInfoKHR where
        type VkPNextMType VkWaylandSurfaceCreateInfoKHR = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkWaylandSurfaceCreateInfoKHR, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkWaylandSurfaceCreateInfoKHR, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkWaylandSurfaceCreateInfoKHR, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkWaylandSurfaceCreateInfoKHR, pNext}

instance {-# OVERLAPPING #-}
         HasField "pNext" VkWaylandSurfaceCreateInfoKHR where
        type FieldType "pNext" VkWaylandSurfaceCreateInfoKHR = Ptr Void
        type FieldOptional "pNext" VkWaylandSurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pNext" VkWaylandSurfaceCreateInfoKHR =
             #{offset VkWaylandSurfaceCreateInfoKHR, pNext}
        type FieldIsArray "pNext" VkWaylandSurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkWaylandSurfaceCreateInfoKHR, pNext}

instance CanReadField "pNext" VkWaylandSurfaceCreateInfoKHR where
        {-# INLINE getField #-}
        getField = vkPNext

        {-# INLINE readField #-}
        readField = readVkPNext

instance CanWriteField "pNext" VkWaylandSurfaceCreateInfoKHR where
        {-# INLINE writeField #-}
        writeField = writeVkPNext

instance {-# OVERLAPPING #-}
         HasVkFlags VkWaylandSurfaceCreateInfoKHR where
        type VkFlagsMType VkWaylandSurfaceCreateInfoKHR =
             VkWaylandSurfaceCreateFlagsKHR

        {-# NOINLINE vkFlags #-}
        vkFlags x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkWaylandSurfaceCreateInfoKHR, flags})

        {-# INLINE vkFlagsByteOffset #-}
        vkFlagsByteOffset ~_
          = #{offset VkWaylandSurfaceCreateInfoKHR, flags}

        {-# INLINE readVkFlags #-}
        readVkFlags p
          = peekByteOff p #{offset VkWaylandSurfaceCreateInfoKHR, flags}

        {-# INLINE writeVkFlags #-}
        writeVkFlags p
          = pokeByteOff p #{offset VkWaylandSurfaceCreateInfoKHR, flags}

instance {-# OVERLAPPING #-}
         HasField "flags" VkWaylandSurfaceCreateInfoKHR where
        type FieldType "flags" VkWaylandSurfaceCreateInfoKHR =
             VkWaylandSurfaceCreateFlagsKHR
        type FieldOptional "flags" VkWaylandSurfaceCreateInfoKHR = 'True -- ' closing tick for hsc2hs
        type FieldOffset "flags" VkWaylandSurfaceCreateInfoKHR =
             #{offset VkWaylandSurfaceCreateInfoKHR, flags}
        type FieldIsArray "flags" VkWaylandSurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = True

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkWaylandSurfaceCreateInfoKHR, flags}

instance CanReadField "flags" VkWaylandSurfaceCreateInfoKHR where
        {-# INLINE getField #-}
        getField = vkFlags

        {-# INLINE readField #-}
        readField = readVkFlags

instance CanWriteField "flags" VkWaylandSurfaceCreateInfoKHR where
        {-# INLINE writeField #-}
        writeField = writeVkFlags

instance {-# OVERLAPPING #-}
         HasVkDisplay VkWaylandSurfaceCreateInfoKHR where
        type VkDisplayMType VkWaylandSurfaceCreateInfoKHR = Ptr WlDisplay

        {-# NOINLINE vkDisplay #-}
        vkDisplay x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkWaylandSurfaceCreateInfoKHR, display})

        {-# INLINE vkDisplayByteOffset #-}
        vkDisplayByteOffset ~_
          = #{offset VkWaylandSurfaceCreateInfoKHR, display}

        {-# INLINE readVkDisplay #-}
        readVkDisplay p
          = peekByteOff p #{offset VkWaylandSurfaceCreateInfoKHR, display}

        {-# INLINE writeVkDisplay #-}
        writeVkDisplay p
          = pokeByteOff p #{offset VkWaylandSurfaceCreateInfoKHR, display}

instance {-# OVERLAPPING #-}
         HasField "display" VkWaylandSurfaceCreateInfoKHR where
        type FieldType "display" VkWaylandSurfaceCreateInfoKHR =
             Ptr WlDisplay
        type FieldOptional "display" VkWaylandSurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "display" VkWaylandSurfaceCreateInfoKHR =
             #{offset VkWaylandSurfaceCreateInfoKHR, display}
        type FieldIsArray "display" VkWaylandSurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkWaylandSurfaceCreateInfoKHR, display}

instance CanReadField "display" VkWaylandSurfaceCreateInfoKHR where
        {-# INLINE getField #-}
        getField = vkDisplay

        {-# INLINE readField #-}
        readField = readVkDisplay

instance CanWriteField "display" VkWaylandSurfaceCreateInfoKHR
         where
        {-# INLINE writeField #-}
        writeField = writeVkDisplay

instance {-# OVERLAPPING #-}
         HasVkSurface VkWaylandSurfaceCreateInfoKHR where
        type VkSurfaceMType VkWaylandSurfaceCreateInfoKHR = Ptr WlSurface

        {-# NOINLINE vkSurface #-}
        vkSurface x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkWaylandSurfaceCreateInfoKHR, surface})

        {-# INLINE vkSurfaceByteOffset #-}
        vkSurfaceByteOffset ~_
          = #{offset VkWaylandSurfaceCreateInfoKHR, surface}

        {-# INLINE readVkSurface #-}
        readVkSurface p
          = peekByteOff p #{offset VkWaylandSurfaceCreateInfoKHR, surface}

        {-# INLINE writeVkSurface #-}
        writeVkSurface p
          = pokeByteOff p #{offset VkWaylandSurfaceCreateInfoKHR, surface}

instance {-# OVERLAPPING #-}
         HasField "surface" VkWaylandSurfaceCreateInfoKHR where
        type FieldType "surface" VkWaylandSurfaceCreateInfoKHR =
             Ptr WlSurface
        type FieldOptional "surface" VkWaylandSurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "surface" VkWaylandSurfaceCreateInfoKHR =
             #{offset VkWaylandSurfaceCreateInfoKHR, surface}
        type FieldIsArray "surface" VkWaylandSurfaceCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkWaylandSurfaceCreateInfoKHR, surface}

instance CanReadField "surface" VkWaylandSurfaceCreateInfoKHR where
        {-# INLINE getField #-}
        getField = vkSurface

        {-# INLINE readField #-}
        readField = readVkSurface

instance CanWriteField "surface" VkWaylandSurfaceCreateInfoKHR
         where
        {-# INLINE writeField #-}
        writeField = writeVkSurface

instance Show VkWaylandSurfaceCreateInfoKHR where
        showsPrec d x
          = showString "VkWaylandSurfaceCreateInfoKHR {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkFlags = " .
                            showsPrec d (vkFlags x) .
                              showString ", " .
                                showString "vkDisplay = " .
                                  showsPrec d (vkDisplay x) .
                                    showString ", " .
                                      showString "vkSurface = " .
                                        showsPrec d (vkSurface x) . showChar '}'