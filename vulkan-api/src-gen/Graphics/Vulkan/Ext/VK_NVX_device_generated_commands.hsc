#include "vulkan/vulkan.h"

{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE FlexibleInstances        #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE MagicHash                #-}
{-# LANGUAGE MultiParamTypeClasses    #-}
{-# LANGUAGE PatternSynonyms          #-}
{-# LANGUAGE Strict                   #-}
{-# LANGUAGE TypeFamilies             #-}
{-# LANGUAGE UnboxedTuples            #-}
{-# LANGUAGE ViewPatterns             #-}
module Graphics.Vulkan.Ext.VK_NVX_device_generated_commands
       (-- * Vulkan extension: @VK_NVX_device_generated_commands@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Christoph Kubisch @pixeljetstream@
        --
        -- author: @NVX@
        --
        -- type: @device@
        --
        -- Extension number: @87@
        VkDeviceGeneratedCommandsFeaturesNVX(..),
        VkDeviceGeneratedCommandsLimitsNVX(..),
        VkIndirectCommandsTokenNVX(..),
        VkIndirectCommandsLayoutTokenNVX(..),
        VkIndirectCommandsLayoutCreateInfoNVX(..),
        VkCmdProcessCommandsInfoNVX(..),
        VkCmdReserveSpaceForCommandsInfoNVX(..),
        VkObjectTableCreateInfoNVX(..), VkObjectTableEntryNVX(..),
        VkObjectTablePipelineEntryNVX(..),
        VkObjectTableDescriptorSetEntryNVX(..),
        VkObjectTableVertexBufferEntryNVX(..),
        VkObjectTableIndexBufferEntryNVX(..),
        VkObjectTablePushConstantEntryNVX(..), vkCmdProcessCommandsNVX,
        vkCmdReserveSpaceForCommandsNVX, vkCreateIndirectCommandsLayoutNVX,
        vkDestroyIndirectCommandsLayoutNVX, vkCreateObjectTableNVX,
        vkDestroyObjectTableNVX, vkRegisterObjectsNVX,
        vkUnregisterObjectsNVX,
        vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX,
        VK_NVX_DEVICE_GENERATED_COMMANDS_SPEC_VERSION,
        pattern VK_NVX_DEVICE_GENERATED_COMMANDS_SPEC_VERSION,
        VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME,
        pattern VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_OBJECT_TABLE_CREATE_INFO_NVX,
        pattern VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NVX,
        pattern VK_STRUCTURE_TYPE_CMD_PROCESS_COMMANDS_INFO_NVX,
        pattern VK_STRUCTURE_TYPE_CMD_RESERVE_SPACE_FOR_COMMANDS_INFO_NVX,
        pattern VK_STRUCTURE_TYPE_DEVICE_GENERATED_COMMANDS_LIMITS_NVX,
        pattern VK_STRUCTURE_TYPE_DEVICE_GENERATED_COMMANDS_FEATURES_NVX,
        pattern VK_PIPELINE_STAGE_COMMAND_PROCESS_BIT_NVX,
        pattern VK_ACCESS_COMMAND_PROCESS_READ_BIT_NVX,
        pattern VK_ACCESS_COMMAND_PROCESS_WRITE_BIT_NVX,
        pattern VK_OBJECT_TYPE_OBJECT_TABLE_NVX,
        pattern VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NVX)
       where
import           Foreign.C.String                 (CString)
import           Foreign.Storable                 (Storable (..))
import           GHC.ForeignPtr                   (ForeignPtr (..),
                                                   ForeignPtrContents (..),
                                                   newForeignPtr_)
import           GHC.Prim
import           GHC.Ptr                          (Ptr (..))
import           GHC.Types                        (IO (..), Int (..))
import           Graphics.Vulkan.Base             (VkAllocationCallbacks (..))
import           Graphics.Vulkan.Common
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Internal
import           Graphics.Vulkan.StructMembers
import           System.IO.Unsafe                 (unsafeDupablePerformIO)

-- | > typedef struct VkDeviceGeneratedCommandsFeaturesNVX {
--   >     VkStructureType sType;
--   >     const void*                      pNext;
--   >     VkBool32                         computeBindingPointSupport;
--   > } VkDeviceGeneratedCommandsFeaturesNVX;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/VkDeviceGeneratedCommandsFeaturesNVX.html VkDeviceGeneratedCommandsFeaturesNVX registry at www.khronos.org>
data VkDeviceGeneratedCommandsFeaturesNVX = VkDeviceGeneratedCommandsFeaturesNVX## ByteArray##

instance Eq VkDeviceGeneratedCommandsFeaturesNVX where
        (VkDeviceGeneratedCommandsFeaturesNVX## a) ==
          (VkDeviceGeneratedCommandsFeaturesNVX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkDeviceGeneratedCommandsFeaturesNVX where
        (VkDeviceGeneratedCommandsFeaturesNVX## a) `compare`
          (VkDeviceGeneratedCommandsFeaturesNVX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkDeviceGeneratedCommandsFeaturesNVX where
        sizeOf ~_
          = #{size VkDeviceGeneratedCommandsFeaturesNVX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkDeviceGeneratedCommandsFeaturesNVX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf
                      (undefined :: VkDeviceGeneratedCommandsFeaturesNVX),
            I## a <- alignment
                      (undefined :: VkDeviceGeneratedCommandsFeaturesNVX)
            =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkDeviceGeneratedCommandsFeaturesNVX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkDeviceGeneratedCommandsFeaturesNVX## ba)
          | I## n <- sizeOf
                      (undefined :: VkDeviceGeneratedCommandsFeaturesNVX)
            = IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkDeviceGeneratedCommandsFeaturesNVX where
        type StructFields VkDeviceGeneratedCommandsFeaturesNVX =
             '["sType", "pNext", "computeBindingPointSupport"] -- ' closing tick for hsc2hs

        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf
                      (undefined :: VkDeviceGeneratedCommandsFeaturesNVX),
            I## a <- alignment
                      (undefined :: VkDeviceGeneratedCommandsFeaturesNVX)
            =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkDeviceGeneratedCommandsFeaturesNVX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkDeviceGeneratedCommandsFeaturesNVX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr
          = fromForeignPtr## VkDeviceGeneratedCommandsFeaturesNVX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkDeviceGeneratedCommandsFeaturesNVX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkDeviceGeneratedCommandsFeaturesNVX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkDeviceGeneratedCommandsFeaturesNVX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkSType VkDeviceGeneratedCommandsFeaturesNVX where
        type VkSTypeMType VkDeviceGeneratedCommandsFeaturesNVX =
             VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGeneratedCommandsFeaturesNVX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkDeviceGeneratedCommandsFeaturesNVX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkDeviceGeneratedCommandsFeaturesNVX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkDeviceGeneratedCommandsFeaturesNVX, sType}

instance {-# OVERLAPPING #-}
         HasField "sType" VkDeviceGeneratedCommandsFeaturesNVX where
        type FieldType "sType" VkDeviceGeneratedCommandsFeaturesNVX =
             VkStructureType
        type FieldOptional "sType" VkDeviceGeneratedCommandsFeaturesNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "sType" VkDeviceGeneratedCommandsFeaturesNVX =
             #{offset VkDeviceGeneratedCommandsFeaturesNVX, sType}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkDeviceGeneratedCommandsFeaturesNVX, sType}

instance CanReadField "sType" VkDeviceGeneratedCommandsFeaturesNVX
         where
        {-# INLINE getField #-}
        getField = vkSType

        {-# INLINE readField #-}
        readField = readVkSType

instance CanWriteField "sType" VkDeviceGeneratedCommandsFeaturesNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkSType

instance {-# OVERLAPPING #-}
         HasVkPNext VkDeviceGeneratedCommandsFeaturesNVX where
        type VkPNextMType VkDeviceGeneratedCommandsFeaturesNVX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGeneratedCommandsFeaturesNVX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkDeviceGeneratedCommandsFeaturesNVX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkDeviceGeneratedCommandsFeaturesNVX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkDeviceGeneratedCommandsFeaturesNVX, pNext}

instance {-# OVERLAPPING #-}
         HasField "pNext" VkDeviceGeneratedCommandsFeaturesNVX where
        type FieldType "pNext" VkDeviceGeneratedCommandsFeaturesNVX =
             Ptr Void
        type FieldOptional "pNext" VkDeviceGeneratedCommandsFeaturesNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "pNext" VkDeviceGeneratedCommandsFeaturesNVX =
             #{offset VkDeviceGeneratedCommandsFeaturesNVX, pNext}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkDeviceGeneratedCommandsFeaturesNVX, pNext}

instance CanReadField "pNext" VkDeviceGeneratedCommandsFeaturesNVX
         where
        {-# INLINE getField #-}
        getField = vkPNext

        {-# INLINE readField #-}
        readField = readVkPNext

instance CanWriteField "pNext" VkDeviceGeneratedCommandsFeaturesNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkPNext

instance {-# OVERLAPPING #-}
         HasVkComputeBindingPointSupport
           VkDeviceGeneratedCommandsFeaturesNVX
         where
        type VkComputeBindingPointSupportMType
               VkDeviceGeneratedCommandsFeaturesNVX
             = VkBool32

        {-# NOINLINE vkComputeBindingPointSupport #-}
        vkComputeBindingPointSupport x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGeneratedCommandsFeaturesNVX, computeBindingPointSupport})

        {-# INLINE vkComputeBindingPointSupportByteOffset #-}
        vkComputeBindingPointSupportByteOffset ~_
          = #{offset VkDeviceGeneratedCommandsFeaturesNVX, computeBindingPointSupport}

        {-# INLINE readVkComputeBindingPointSupport #-}
        readVkComputeBindingPointSupport p
          = peekByteOff p #{offset VkDeviceGeneratedCommandsFeaturesNVX, computeBindingPointSupport}

        {-# INLINE writeVkComputeBindingPointSupport #-}
        writeVkComputeBindingPointSupport p
          = pokeByteOff p #{offset VkDeviceGeneratedCommandsFeaturesNVX, computeBindingPointSupport}

instance {-# OVERLAPPING #-}
         HasField "computeBindingPointSupport"
           VkDeviceGeneratedCommandsFeaturesNVX
         where
        type FieldType "computeBindingPointSupport"
               VkDeviceGeneratedCommandsFeaturesNVX
             = VkBool32
        type FieldOptional "computeBindingPointSupport"
               VkDeviceGeneratedCommandsFeaturesNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "computeBindingPointSupport"
               VkDeviceGeneratedCommandsFeaturesNVX
             =
             #{offset VkDeviceGeneratedCommandsFeaturesNVX, computeBindingPointSupport}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkDeviceGeneratedCommandsFeaturesNVX, computeBindingPointSupport}

instance CanReadField "computeBindingPointSupport"
           VkDeviceGeneratedCommandsFeaturesNVX
         where
        {-# INLINE getField #-}
        getField = vkComputeBindingPointSupport

        {-# INLINE readField #-}
        readField = readVkComputeBindingPointSupport

instance CanWriteField "computeBindingPointSupport"
           VkDeviceGeneratedCommandsFeaturesNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkComputeBindingPointSupport

instance Show VkDeviceGeneratedCommandsFeaturesNVX where
        showsPrec d x
          = showString "VkDeviceGeneratedCommandsFeaturesNVX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkComputeBindingPointSupport = " .
                            showsPrec d (vkComputeBindingPointSupport x) . showChar '}'

-- | > typedef struct VkDeviceGeneratedCommandsLimitsNVX {
--   >     VkStructureType sType;
--   >     const void*                      pNext;
--   >     uint32_t                         maxIndirectCommandsLayoutTokenCount;
--   >     uint32_t                         maxObjectEntryCounts;
--   >     uint32_t                         minSequenceCountBufferOffsetAlignment;
--   >     uint32_t                         minSequenceIndexBufferOffsetAlignment;
--   >     uint32_t                         minCommandsTokenBufferOffsetAlignment;
--   > } VkDeviceGeneratedCommandsLimitsNVX;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/VkDeviceGeneratedCommandsLimitsNVX.html VkDeviceGeneratedCommandsLimitsNVX registry at www.khronos.org>
data VkDeviceGeneratedCommandsLimitsNVX = VkDeviceGeneratedCommandsLimitsNVX## ByteArray##

instance Eq VkDeviceGeneratedCommandsLimitsNVX where
        (VkDeviceGeneratedCommandsLimitsNVX## a) ==
          (VkDeviceGeneratedCommandsLimitsNVX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkDeviceGeneratedCommandsLimitsNVX where
        (VkDeviceGeneratedCommandsLimitsNVX## a) `compare`
          (VkDeviceGeneratedCommandsLimitsNVX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkDeviceGeneratedCommandsLimitsNVX where
        sizeOf ~_ = #{size VkDeviceGeneratedCommandsLimitsNVX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkDeviceGeneratedCommandsLimitsNVX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkDeviceGeneratedCommandsLimitsNVX),
            I## a <- alignment (undefined :: VkDeviceGeneratedCommandsLimitsNVX)
            =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkDeviceGeneratedCommandsLimitsNVX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkDeviceGeneratedCommandsLimitsNVX## ba)
          | I## n <- sizeOf (undefined :: VkDeviceGeneratedCommandsLimitsNVX)
            = IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkDeviceGeneratedCommandsLimitsNVX where
        type StructFields VkDeviceGeneratedCommandsLimitsNVX =
             '["sType", "pNext", "maxIndirectCommandsLayoutTokenCount", -- ' closing tick for hsc2hs
               "maxObjectEntryCounts", "minSequenceCountBufferOffsetAlignment",
               "minSequenceIndexBufferOffsetAlignment",
               "minCommandsTokenBufferOffsetAlignment"]

        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkDeviceGeneratedCommandsLimitsNVX),
            I## a <- alignment (undefined :: VkDeviceGeneratedCommandsLimitsNVX)
            =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkDeviceGeneratedCommandsLimitsNVX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkDeviceGeneratedCommandsLimitsNVX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr
          = fromForeignPtr## VkDeviceGeneratedCommandsLimitsNVX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkDeviceGeneratedCommandsLimitsNVX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkDeviceGeneratedCommandsLimitsNVX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkDeviceGeneratedCommandsLimitsNVX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkSType VkDeviceGeneratedCommandsLimitsNVX where
        type VkSTypeMType VkDeviceGeneratedCommandsLimitsNVX =
             VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGeneratedCommandsLimitsNVX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkDeviceGeneratedCommandsLimitsNVX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkDeviceGeneratedCommandsLimitsNVX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkDeviceGeneratedCommandsLimitsNVX, sType}

instance {-# OVERLAPPING #-}
         HasField "sType" VkDeviceGeneratedCommandsLimitsNVX where
        type FieldType "sType" VkDeviceGeneratedCommandsLimitsNVX =
             VkStructureType
        type FieldOptional "sType" VkDeviceGeneratedCommandsLimitsNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "sType" VkDeviceGeneratedCommandsLimitsNVX =
             #{offset VkDeviceGeneratedCommandsLimitsNVX, sType}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkDeviceGeneratedCommandsLimitsNVX, sType}

instance CanReadField "sType" VkDeviceGeneratedCommandsLimitsNVX
         where
        {-# INLINE getField #-}
        getField = vkSType

        {-# INLINE readField #-}
        readField = readVkSType

instance CanWriteField "sType" VkDeviceGeneratedCommandsLimitsNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkSType

instance {-# OVERLAPPING #-}
         HasVkPNext VkDeviceGeneratedCommandsLimitsNVX where
        type VkPNextMType VkDeviceGeneratedCommandsLimitsNVX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGeneratedCommandsLimitsNVX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkDeviceGeneratedCommandsLimitsNVX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkDeviceGeneratedCommandsLimitsNVX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkDeviceGeneratedCommandsLimitsNVX, pNext}

instance {-# OVERLAPPING #-}
         HasField "pNext" VkDeviceGeneratedCommandsLimitsNVX where
        type FieldType "pNext" VkDeviceGeneratedCommandsLimitsNVX =
             Ptr Void
        type FieldOptional "pNext" VkDeviceGeneratedCommandsLimitsNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "pNext" VkDeviceGeneratedCommandsLimitsNVX =
             #{offset VkDeviceGeneratedCommandsLimitsNVX, pNext}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkDeviceGeneratedCommandsLimitsNVX, pNext}

instance CanReadField "pNext" VkDeviceGeneratedCommandsLimitsNVX
         where
        {-# INLINE getField #-}
        getField = vkPNext

        {-# INLINE readField #-}
        readField = readVkPNext

instance CanWriteField "pNext" VkDeviceGeneratedCommandsLimitsNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkPNext

instance {-# OVERLAPPING #-}
         HasVkMaxIndirectCommandsLayoutTokenCount
           VkDeviceGeneratedCommandsLimitsNVX
         where
        type VkMaxIndirectCommandsLayoutTokenCountMType
               VkDeviceGeneratedCommandsLimitsNVX
             = Word32

        {-# NOINLINE vkMaxIndirectCommandsLayoutTokenCount #-}
        vkMaxIndirectCommandsLayoutTokenCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGeneratedCommandsLimitsNVX, maxIndirectCommandsLayoutTokenCount})

        {-# INLINE vkMaxIndirectCommandsLayoutTokenCountByteOffset #-}
        vkMaxIndirectCommandsLayoutTokenCountByteOffset ~_
          = #{offset VkDeviceGeneratedCommandsLimitsNVX, maxIndirectCommandsLayoutTokenCount}

        {-# INLINE readVkMaxIndirectCommandsLayoutTokenCount #-}
        readVkMaxIndirectCommandsLayoutTokenCount p
          = peekByteOff p #{offset VkDeviceGeneratedCommandsLimitsNVX, maxIndirectCommandsLayoutTokenCount}

        {-# INLINE writeVkMaxIndirectCommandsLayoutTokenCount #-}
        writeVkMaxIndirectCommandsLayoutTokenCount p
          = pokeByteOff p #{offset VkDeviceGeneratedCommandsLimitsNVX, maxIndirectCommandsLayoutTokenCount}

instance {-# OVERLAPPING #-}
         HasField "maxIndirectCommandsLayoutTokenCount"
           VkDeviceGeneratedCommandsLimitsNVX
         where
        type FieldType "maxIndirectCommandsLayoutTokenCount"
               VkDeviceGeneratedCommandsLimitsNVX
             = Word32
        type FieldOptional "maxIndirectCommandsLayoutTokenCount"
               VkDeviceGeneratedCommandsLimitsNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "maxIndirectCommandsLayoutTokenCount"
               VkDeviceGeneratedCommandsLimitsNVX
             =
             #{offset VkDeviceGeneratedCommandsLimitsNVX, maxIndirectCommandsLayoutTokenCount}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkDeviceGeneratedCommandsLimitsNVX, maxIndirectCommandsLayoutTokenCount}

instance CanReadField "maxIndirectCommandsLayoutTokenCount"
           VkDeviceGeneratedCommandsLimitsNVX
         where
        {-# INLINE getField #-}
        getField = vkMaxIndirectCommandsLayoutTokenCount

        {-# INLINE readField #-}
        readField = readVkMaxIndirectCommandsLayoutTokenCount

instance CanWriteField "maxIndirectCommandsLayoutTokenCount"
           VkDeviceGeneratedCommandsLimitsNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkMaxIndirectCommandsLayoutTokenCount

instance {-# OVERLAPPING #-}
         HasVkMaxObjectEntryCounts VkDeviceGeneratedCommandsLimitsNVX where
        type VkMaxObjectEntryCountsMType VkDeviceGeneratedCommandsLimitsNVX
             = Word32

        {-# NOINLINE vkMaxObjectEntryCounts #-}
        vkMaxObjectEntryCounts x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGeneratedCommandsLimitsNVX, maxObjectEntryCounts})

        {-# INLINE vkMaxObjectEntryCountsByteOffset #-}
        vkMaxObjectEntryCountsByteOffset ~_
          = #{offset VkDeviceGeneratedCommandsLimitsNVX, maxObjectEntryCounts}

        {-# INLINE readVkMaxObjectEntryCounts #-}
        readVkMaxObjectEntryCounts p
          = peekByteOff p #{offset VkDeviceGeneratedCommandsLimitsNVX, maxObjectEntryCounts}

        {-# INLINE writeVkMaxObjectEntryCounts #-}
        writeVkMaxObjectEntryCounts p
          = pokeByteOff p #{offset VkDeviceGeneratedCommandsLimitsNVX, maxObjectEntryCounts}

instance {-# OVERLAPPING #-}
         HasField "maxObjectEntryCounts" VkDeviceGeneratedCommandsLimitsNVX
         where
        type FieldType "maxObjectEntryCounts"
               VkDeviceGeneratedCommandsLimitsNVX
             = Word32
        type FieldOptional "maxObjectEntryCounts"
               VkDeviceGeneratedCommandsLimitsNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "maxObjectEntryCounts"
               VkDeviceGeneratedCommandsLimitsNVX
             =
             #{offset VkDeviceGeneratedCommandsLimitsNVX, maxObjectEntryCounts}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkDeviceGeneratedCommandsLimitsNVX, maxObjectEntryCounts}

instance CanReadField "maxObjectEntryCounts"
           VkDeviceGeneratedCommandsLimitsNVX
         where
        {-# INLINE getField #-}
        getField = vkMaxObjectEntryCounts

        {-# INLINE readField #-}
        readField = readVkMaxObjectEntryCounts

instance CanWriteField "maxObjectEntryCounts"
           VkDeviceGeneratedCommandsLimitsNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkMaxObjectEntryCounts

instance {-# OVERLAPPING #-}
         HasVkMinSequenceCountBufferOffsetAlignment
           VkDeviceGeneratedCommandsLimitsNVX
         where
        type VkMinSequenceCountBufferOffsetAlignmentMType
               VkDeviceGeneratedCommandsLimitsNVX
             = Word32

        {-# NOINLINE vkMinSequenceCountBufferOffsetAlignment #-}
        vkMinSequenceCountBufferOffsetAlignment x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGeneratedCommandsLimitsNVX, minSequenceCountBufferOffsetAlignment})

        {-# INLINE vkMinSequenceCountBufferOffsetAlignmentByteOffset #-}
        vkMinSequenceCountBufferOffsetAlignmentByteOffset ~_
          = #{offset VkDeviceGeneratedCommandsLimitsNVX, minSequenceCountBufferOffsetAlignment}

        {-# INLINE readVkMinSequenceCountBufferOffsetAlignment #-}
        readVkMinSequenceCountBufferOffsetAlignment p
          = peekByteOff p #{offset VkDeviceGeneratedCommandsLimitsNVX, minSequenceCountBufferOffsetAlignment}

        {-# INLINE writeVkMinSequenceCountBufferOffsetAlignment #-}
        writeVkMinSequenceCountBufferOffsetAlignment p
          = pokeByteOff p #{offset VkDeviceGeneratedCommandsLimitsNVX, minSequenceCountBufferOffsetAlignment}

instance {-# OVERLAPPING #-}
         HasField "minSequenceCountBufferOffsetAlignment"
           VkDeviceGeneratedCommandsLimitsNVX
         where
        type FieldType "minSequenceCountBufferOffsetAlignment"
               VkDeviceGeneratedCommandsLimitsNVX
             = Word32
        type FieldOptional "minSequenceCountBufferOffsetAlignment"
               VkDeviceGeneratedCommandsLimitsNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "minSequenceCountBufferOffsetAlignment"
               VkDeviceGeneratedCommandsLimitsNVX
             =
             #{offset VkDeviceGeneratedCommandsLimitsNVX, minSequenceCountBufferOffsetAlignment}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkDeviceGeneratedCommandsLimitsNVX, minSequenceCountBufferOffsetAlignment}

instance CanReadField "minSequenceCountBufferOffsetAlignment"
           VkDeviceGeneratedCommandsLimitsNVX
         where
        {-# INLINE getField #-}
        getField = vkMinSequenceCountBufferOffsetAlignment

        {-# INLINE readField #-}
        readField = readVkMinSequenceCountBufferOffsetAlignment

instance CanWriteField "minSequenceCountBufferOffsetAlignment"
           VkDeviceGeneratedCommandsLimitsNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkMinSequenceCountBufferOffsetAlignment

instance {-# OVERLAPPING #-}
         HasVkMinSequenceIndexBufferOffsetAlignment
           VkDeviceGeneratedCommandsLimitsNVX
         where
        type VkMinSequenceIndexBufferOffsetAlignmentMType
               VkDeviceGeneratedCommandsLimitsNVX
             = Word32

        {-# NOINLINE vkMinSequenceIndexBufferOffsetAlignment #-}
        vkMinSequenceIndexBufferOffsetAlignment x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGeneratedCommandsLimitsNVX, minSequenceIndexBufferOffsetAlignment})

        {-# INLINE vkMinSequenceIndexBufferOffsetAlignmentByteOffset #-}
        vkMinSequenceIndexBufferOffsetAlignmentByteOffset ~_
          = #{offset VkDeviceGeneratedCommandsLimitsNVX, minSequenceIndexBufferOffsetAlignment}

        {-# INLINE readVkMinSequenceIndexBufferOffsetAlignment #-}
        readVkMinSequenceIndexBufferOffsetAlignment p
          = peekByteOff p #{offset VkDeviceGeneratedCommandsLimitsNVX, minSequenceIndexBufferOffsetAlignment}

        {-# INLINE writeVkMinSequenceIndexBufferOffsetAlignment #-}
        writeVkMinSequenceIndexBufferOffsetAlignment p
          = pokeByteOff p #{offset VkDeviceGeneratedCommandsLimitsNVX, minSequenceIndexBufferOffsetAlignment}

instance {-# OVERLAPPING #-}
         HasField "minSequenceIndexBufferOffsetAlignment"
           VkDeviceGeneratedCommandsLimitsNVX
         where
        type FieldType "minSequenceIndexBufferOffsetAlignment"
               VkDeviceGeneratedCommandsLimitsNVX
             = Word32
        type FieldOptional "minSequenceIndexBufferOffsetAlignment"
               VkDeviceGeneratedCommandsLimitsNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "minSequenceIndexBufferOffsetAlignment"
               VkDeviceGeneratedCommandsLimitsNVX
             =
             #{offset VkDeviceGeneratedCommandsLimitsNVX, minSequenceIndexBufferOffsetAlignment}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkDeviceGeneratedCommandsLimitsNVX, minSequenceIndexBufferOffsetAlignment}

instance CanReadField "minSequenceIndexBufferOffsetAlignment"
           VkDeviceGeneratedCommandsLimitsNVX
         where
        {-# INLINE getField #-}
        getField = vkMinSequenceIndexBufferOffsetAlignment

        {-# INLINE readField #-}
        readField = readVkMinSequenceIndexBufferOffsetAlignment

instance CanWriteField "minSequenceIndexBufferOffsetAlignment"
           VkDeviceGeneratedCommandsLimitsNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkMinSequenceIndexBufferOffsetAlignment

instance {-# OVERLAPPING #-}
         HasVkMinCommandsTokenBufferOffsetAlignment
           VkDeviceGeneratedCommandsLimitsNVX
         where
        type VkMinCommandsTokenBufferOffsetAlignmentMType
               VkDeviceGeneratedCommandsLimitsNVX
             = Word32

        {-# NOINLINE vkMinCommandsTokenBufferOffsetAlignment #-}
        vkMinCommandsTokenBufferOffsetAlignment x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGeneratedCommandsLimitsNVX, minCommandsTokenBufferOffsetAlignment})

        {-# INLINE vkMinCommandsTokenBufferOffsetAlignmentByteOffset #-}
        vkMinCommandsTokenBufferOffsetAlignmentByteOffset ~_
          = #{offset VkDeviceGeneratedCommandsLimitsNVX, minCommandsTokenBufferOffsetAlignment}

        {-# INLINE readVkMinCommandsTokenBufferOffsetAlignment #-}
        readVkMinCommandsTokenBufferOffsetAlignment p
          = peekByteOff p #{offset VkDeviceGeneratedCommandsLimitsNVX, minCommandsTokenBufferOffsetAlignment}

        {-# INLINE writeVkMinCommandsTokenBufferOffsetAlignment #-}
        writeVkMinCommandsTokenBufferOffsetAlignment p
          = pokeByteOff p #{offset VkDeviceGeneratedCommandsLimitsNVX, minCommandsTokenBufferOffsetAlignment}

instance {-# OVERLAPPING #-}
         HasField "minCommandsTokenBufferOffsetAlignment"
           VkDeviceGeneratedCommandsLimitsNVX
         where
        type FieldType "minCommandsTokenBufferOffsetAlignment"
               VkDeviceGeneratedCommandsLimitsNVX
             = Word32
        type FieldOptional "minCommandsTokenBufferOffsetAlignment"
               VkDeviceGeneratedCommandsLimitsNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "minCommandsTokenBufferOffsetAlignment"
               VkDeviceGeneratedCommandsLimitsNVX
             =
             #{offset VkDeviceGeneratedCommandsLimitsNVX, minCommandsTokenBufferOffsetAlignment}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkDeviceGeneratedCommandsLimitsNVX, minCommandsTokenBufferOffsetAlignment}

instance CanReadField "minCommandsTokenBufferOffsetAlignment"
           VkDeviceGeneratedCommandsLimitsNVX
         where
        {-# INLINE getField #-}
        getField = vkMinCommandsTokenBufferOffsetAlignment

        {-# INLINE readField #-}
        readField = readVkMinCommandsTokenBufferOffsetAlignment

instance CanWriteField "minCommandsTokenBufferOffsetAlignment"
           VkDeviceGeneratedCommandsLimitsNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkMinCommandsTokenBufferOffsetAlignment

instance Show VkDeviceGeneratedCommandsLimitsNVX where
        showsPrec d x
          = showString "VkDeviceGeneratedCommandsLimitsNVX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkMaxIndirectCommandsLayoutTokenCount = " .
                            showsPrec d (vkMaxIndirectCommandsLayoutTokenCount x) .
                              showString ", " .
                                showString "vkMaxObjectEntryCounts = " .
                                  showsPrec d (vkMaxObjectEntryCounts x) .
                                    showString ", " .
                                      showString "vkMinSequenceCountBufferOffsetAlignment = " .
                                        showsPrec d (vkMinSequenceCountBufferOffsetAlignment x) .
                                          showString ", " .
                                            showString "vkMinSequenceIndexBufferOffsetAlignment = "
                                              .
                                              showsPrec d
                                                (vkMinSequenceIndexBufferOffsetAlignment x)
                                                .
                                                showString ", " .
                                                  showString
                                                    "vkMinCommandsTokenBufferOffsetAlignment = "
                                                    .
                                                    showsPrec d
                                                      (vkMinCommandsTokenBufferOffsetAlignment x)
                                                      . showChar '}'

-- | > typedef struct VkIndirectCommandsTokenNVX {
--   >     VkIndirectCommandsTokenTypeNVX      tokenType;
--   >     VkBuffer                         buffer;
--   >     VkDeviceSize                     offset;
--   > } VkIndirectCommandsTokenNVX;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/VkIndirectCommandsTokenNVX.html VkIndirectCommandsTokenNVX registry at www.khronos.org>
data VkIndirectCommandsTokenNVX = VkIndirectCommandsTokenNVX## ByteArray##

instance Eq VkIndirectCommandsTokenNVX where
        (VkIndirectCommandsTokenNVX## a) == (VkIndirectCommandsTokenNVX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkIndirectCommandsTokenNVX where
        (VkIndirectCommandsTokenNVX## a) `compare`
          (VkIndirectCommandsTokenNVX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkIndirectCommandsTokenNVX where
        sizeOf ~_ = #{size VkIndirectCommandsTokenNVX}

        {-# INLINE sizeOf #-}
        alignment ~_ = #{alignment VkIndirectCommandsTokenNVX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkIndirectCommandsTokenNVX),
            I## a <- alignment (undefined :: VkIndirectCommandsTokenNVX) =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkIndirectCommandsTokenNVX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkIndirectCommandsTokenNVX## ba)
          | I## n <- sizeOf (undefined :: VkIndirectCommandsTokenNVX) =
            IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkIndirectCommandsTokenNVX where
        type StructFields VkIndirectCommandsTokenNVX =
             '["tokenType", "buffer", "offset"] -- ' closing tick for hsc2hs

        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkIndirectCommandsTokenNVX),
            I## a <- alignment (undefined :: VkIndirectCommandsTokenNVX) =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkIndirectCommandsTokenNVX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkIndirectCommandsTokenNVX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr = fromForeignPtr## VkIndirectCommandsTokenNVX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkIndirectCommandsTokenNVX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkIndirectCommandsTokenNVX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkIndirectCommandsTokenNVX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkTokenType VkIndirectCommandsTokenNVX where
        type VkTokenTypeMType VkIndirectCommandsTokenNVX =
             VkIndirectCommandsTokenTypeNVX

        {-# NOINLINE vkTokenType #-}
        vkTokenType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkIndirectCommandsTokenNVX, tokenType})

        {-# INLINE vkTokenTypeByteOffset #-}
        vkTokenTypeByteOffset ~_
          = #{offset VkIndirectCommandsTokenNVX, tokenType}

        {-# INLINE readVkTokenType #-}
        readVkTokenType p
          = peekByteOff p #{offset VkIndirectCommandsTokenNVX, tokenType}

        {-# INLINE writeVkTokenType #-}
        writeVkTokenType p
          = pokeByteOff p #{offset VkIndirectCommandsTokenNVX, tokenType}

instance {-# OVERLAPPING #-}
         HasField "tokenType" VkIndirectCommandsTokenNVX where
        type FieldType "tokenType" VkIndirectCommandsTokenNVX =
             VkIndirectCommandsTokenTypeNVX
        type FieldOptional "tokenType" VkIndirectCommandsTokenNVX = 'False -- ' closing tick for hsc2hs
        type FieldOffset "tokenType" VkIndirectCommandsTokenNVX =
             #{offset VkIndirectCommandsTokenNVX, tokenType}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkIndirectCommandsTokenNVX, tokenType}

instance CanReadField "tokenType" VkIndirectCommandsTokenNVX where
        {-# INLINE getField #-}
        getField = vkTokenType

        {-# INLINE readField #-}
        readField = readVkTokenType

instance CanWriteField "tokenType" VkIndirectCommandsTokenNVX where
        {-# INLINE writeField #-}
        writeField = writeVkTokenType

instance {-# OVERLAPPING #-} HasVkBuffer VkIndirectCommandsTokenNVX
         where
        type VkBufferMType VkIndirectCommandsTokenNVX = VkBuffer

        {-# NOINLINE vkBuffer #-}
        vkBuffer x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkIndirectCommandsTokenNVX, buffer})

        {-# INLINE vkBufferByteOffset #-}
        vkBufferByteOffset ~_
          = #{offset VkIndirectCommandsTokenNVX, buffer}

        {-# INLINE readVkBuffer #-}
        readVkBuffer p
          = peekByteOff p #{offset VkIndirectCommandsTokenNVX, buffer}

        {-# INLINE writeVkBuffer #-}
        writeVkBuffer p
          = pokeByteOff p #{offset VkIndirectCommandsTokenNVX, buffer}

instance {-# OVERLAPPING #-}
         HasField "buffer" VkIndirectCommandsTokenNVX where
        type FieldType "buffer" VkIndirectCommandsTokenNVX = VkBuffer
        type FieldOptional "buffer" VkIndirectCommandsTokenNVX = 'False -- ' closing tick for hsc2hs
        type FieldOffset "buffer" VkIndirectCommandsTokenNVX =
             #{offset VkIndirectCommandsTokenNVX, buffer}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkIndirectCommandsTokenNVX, buffer}

instance CanReadField "buffer" VkIndirectCommandsTokenNVX where
        {-# INLINE getField #-}
        getField = vkBuffer

        {-# INLINE readField #-}
        readField = readVkBuffer

instance CanWriteField "buffer" VkIndirectCommandsTokenNVX where
        {-# INLINE writeField #-}
        writeField = writeVkBuffer

instance {-# OVERLAPPING #-} HasVkOffset VkIndirectCommandsTokenNVX
         where
        type VkOffsetMType VkIndirectCommandsTokenNVX = VkDeviceSize

        {-# NOINLINE vkOffset #-}
        vkOffset x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkIndirectCommandsTokenNVX, offset})

        {-# INLINE vkOffsetByteOffset #-}
        vkOffsetByteOffset ~_
          = #{offset VkIndirectCommandsTokenNVX, offset}

        {-# INLINE readVkOffset #-}
        readVkOffset p
          = peekByteOff p #{offset VkIndirectCommandsTokenNVX, offset}

        {-# INLINE writeVkOffset #-}
        writeVkOffset p
          = pokeByteOff p #{offset VkIndirectCommandsTokenNVX, offset}

instance {-# OVERLAPPING #-}
         HasField "offset" VkIndirectCommandsTokenNVX where
        type FieldType "offset" VkIndirectCommandsTokenNVX = VkDeviceSize
        type FieldOptional "offset" VkIndirectCommandsTokenNVX = 'False -- ' closing tick for hsc2hs
        type FieldOffset "offset" VkIndirectCommandsTokenNVX =
             #{offset VkIndirectCommandsTokenNVX, offset}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkIndirectCommandsTokenNVX, offset}

instance CanReadField "offset" VkIndirectCommandsTokenNVX where
        {-# INLINE getField #-}
        getField = vkOffset

        {-# INLINE readField #-}
        readField = readVkOffset

instance CanWriteField "offset" VkIndirectCommandsTokenNVX where
        {-# INLINE writeField #-}
        writeField = writeVkOffset

instance Show VkIndirectCommandsTokenNVX where
        showsPrec d x
          = showString "VkIndirectCommandsTokenNVX {" .
              showString "vkTokenType = " .
                showsPrec d (vkTokenType x) .
                  showString ", " .
                    showString "vkBuffer = " .
                      showsPrec d (vkBuffer x) .
                        showString ", " .
                          showString "vkOffset = " . showsPrec d (vkOffset x) . showChar '}'

-- | > typedef struct VkIndirectCommandsLayoutTokenNVX {
--   >     VkIndirectCommandsTokenTypeNVX      tokenType;
--   >     uint32_t                         bindingUnit;
--   >     uint32_t                         dynamicCount;
--   >     uint32_t                         divisor;
--   > } VkIndirectCommandsLayoutTokenNVX;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/VkIndirectCommandsLayoutTokenNVX.html VkIndirectCommandsLayoutTokenNVX registry at www.khronos.org>
data VkIndirectCommandsLayoutTokenNVX = VkIndirectCommandsLayoutTokenNVX## ByteArray##

instance Eq VkIndirectCommandsLayoutTokenNVX where
        (VkIndirectCommandsLayoutTokenNVX## a) ==
          (VkIndirectCommandsLayoutTokenNVX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkIndirectCommandsLayoutTokenNVX where
        (VkIndirectCommandsLayoutTokenNVX## a) `compare`
          (VkIndirectCommandsLayoutTokenNVX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkIndirectCommandsLayoutTokenNVX where
        sizeOf ~_ = #{size VkIndirectCommandsLayoutTokenNVX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkIndirectCommandsLayoutTokenNVX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkIndirectCommandsLayoutTokenNVX),
            I## a <- alignment (undefined :: VkIndirectCommandsLayoutTokenNVX) =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkIndirectCommandsLayoutTokenNVX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkIndirectCommandsLayoutTokenNVX## ba)
          | I## n <- sizeOf (undefined :: VkIndirectCommandsLayoutTokenNVX) =
            IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkIndirectCommandsLayoutTokenNVX where
        type StructFields VkIndirectCommandsLayoutTokenNVX =
             '["tokenType", "bindingUnit", "dynamicCount", "divisor"] -- ' closing tick for hsc2hs

        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkIndirectCommandsLayoutTokenNVX),
            I## a <- alignment (undefined :: VkIndirectCommandsLayoutTokenNVX) =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkIndirectCommandsLayoutTokenNVX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkIndirectCommandsLayoutTokenNVX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr = fromForeignPtr## VkIndirectCommandsLayoutTokenNVX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkIndirectCommandsLayoutTokenNVX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkIndirectCommandsLayoutTokenNVX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkIndirectCommandsLayoutTokenNVX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkTokenType VkIndirectCommandsLayoutTokenNVX where
        type VkTokenTypeMType VkIndirectCommandsLayoutTokenNVX =
             VkIndirectCommandsTokenTypeNVX

        {-# NOINLINE vkTokenType #-}
        vkTokenType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkIndirectCommandsLayoutTokenNVX, tokenType})

        {-# INLINE vkTokenTypeByteOffset #-}
        vkTokenTypeByteOffset ~_
          = #{offset VkIndirectCommandsLayoutTokenNVX, tokenType}

        {-# INLINE readVkTokenType #-}
        readVkTokenType p
          = peekByteOff p #{offset VkIndirectCommandsLayoutTokenNVX, tokenType}

        {-# INLINE writeVkTokenType #-}
        writeVkTokenType p
          = pokeByteOff p #{offset VkIndirectCommandsLayoutTokenNVX, tokenType}

instance {-# OVERLAPPING #-}
         HasField "tokenType" VkIndirectCommandsLayoutTokenNVX where
        type FieldType "tokenType" VkIndirectCommandsLayoutTokenNVX =
             VkIndirectCommandsTokenTypeNVX
        type FieldOptional "tokenType" VkIndirectCommandsLayoutTokenNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "tokenType" VkIndirectCommandsLayoutTokenNVX =
             #{offset VkIndirectCommandsLayoutTokenNVX, tokenType}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkIndirectCommandsLayoutTokenNVX, tokenType}

instance CanReadField "tokenType" VkIndirectCommandsLayoutTokenNVX
         where
        {-# INLINE getField #-}
        getField = vkTokenType

        {-# INLINE readField #-}
        readField = readVkTokenType

instance CanWriteField "tokenType" VkIndirectCommandsLayoutTokenNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkTokenType

instance {-# OVERLAPPING #-}
         HasVkBindingUnit VkIndirectCommandsLayoutTokenNVX where
        type VkBindingUnitMType VkIndirectCommandsLayoutTokenNVX = Word32

        {-# NOINLINE vkBindingUnit #-}
        vkBindingUnit x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkIndirectCommandsLayoutTokenNVX, bindingUnit})

        {-# INLINE vkBindingUnitByteOffset #-}
        vkBindingUnitByteOffset ~_
          = #{offset VkIndirectCommandsLayoutTokenNVX, bindingUnit}

        {-# INLINE readVkBindingUnit #-}
        readVkBindingUnit p
          = peekByteOff p #{offset VkIndirectCommandsLayoutTokenNVX, bindingUnit}

        {-# INLINE writeVkBindingUnit #-}
        writeVkBindingUnit p
          = pokeByteOff p #{offset VkIndirectCommandsLayoutTokenNVX, bindingUnit}

instance {-# OVERLAPPING #-}
         HasField "bindingUnit" VkIndirectCommandsLayoutTokenNVX where
        type FieldType "bindingUnit" VkIndirectCommandsLayoutTokenNVX =
             Word32
        type FieldOptional "bindingUnit" VkIndirectCommandsLayoutTokenNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "bindingUnit" VkIndirectCommandsLayoutTokenNVX =
             #{offset VkIndirectCommandsLayoutTokenNVX, bindingUnit}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkIndirectCommandsLayoutTokenNVX, bindingUnit}

instance CanReadField "bindingUnit"
           VkIndirectCommandsLayoutTokenNVX
         where
        {-# INLINE getField #-}
        getField = vkBindingUnit

        {-# INLINE readField #-}
        readField = readVkBindingUnit

instance CanWriteField "bindingUnit"
           VkIndirectCommandsLayoutTokenNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkBindingUnit

instance {-# OVERLAPPING #-}
         HasVkDynamicCount VkIndirectCommandsLayoutTokenNVX where
        type VkDynamicCountMType VkIndirectCommandsLayoutTokenNVX = Word32

        {-# NOINLINE vkDynamicCount #-}
        vkDynamicCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkIndirectCommandsLayoutTokenNVX, dynamicCount})

        {-# INLINE vkDynamicCountByteOffset #-}
        vkDynamicCountByteOffset ~_
          = #{offset VkIndirectCommandsLayoutTokenNVX, dynamicCount}

        {-# INLINE readVkDynamicCount #-}
        readVkDynamicCount p
          = peekByteOff p #{offset VkIndirectCommandsLayoutTokenNVX, dynamicCount}

        {-# INLINE writeVkDynamicCount #-}
        writeVkDynamicCount p
          = pokeByteOff p #{offset VkIndirectCommandsLayoutTokenNVX, dynamicCount}

instance {-# OVERLAPPING #-}
         HasField "dynamicCount" VkIndirectCommandsLayoutTokenNVX where
        type FieldType "dynamicCount" VkIndirectCommandsLayoutTokenNVX =
             Word32
        type FieldOptional "dynamicCount" VkIndirectCommandsLayoutTokenNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "dynamicCount" VkIndirectCommandsLayoutTokenNVX =
             #{offset VkIndirectCommandsLayoutTokenNVX, dynamicCount}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkIndirectCommandsLayoutTokenNVX, dynamicCount}

instance CanReadField "dynamicCount"
           VkIndirectCommandsLayoutTokenNVX
         where
        {-# INLINE getField #-}
        getField = vkDynamicCount

        {-# INLINE readField #-}
        readField = readVkDynamicCount

instance CanWriteField "dynamicCount"
           VkIndirectCommandsLayoutTokenNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkDynamicCount

instance {-# OVERLAPPING #-}
         HasVkDivisor VkIndirectCommandsLayoutTokenNVX where
        type VkDivisorMType VkIndirectCommandsLayoutTokenNVX = Word32

        {-# NOINLINE vkDivisor #-}
        vkDivisor x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkIndirectCommandsLayoutTokenNVX, divisor})

        {-# INLINE vkDivisorByteOffset #-}
        vkDivisorByteOffset ~_
          = #{offset VkIndirectCommandsLayoutTokenNVX, divisor}

        {-# INLINE readVkDivisor #-}
        readVkDivisor p
          = peekByteOff p #{offset VkIndirectCommandsLayoutTokenNVX, divisor}

        {-# INLINE writeVkDivisor #-}
        writeVkDivisor p
          = pokeByteOff p #{offset VkIndirectCommandsLayoutTokenNVX, divisor}

instance {-# OVERLAPPING #-}
         HasField "divisor" VkIndirectCommandsLayoutTokenNVX where
        type FieldType "divisor" VkIndirectCommandsLayoutTokenNVX = Word32
        type FieldOptional "divisor" VkIndirectCommandsLayoutTokenNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "divisor" VkIndirectCommandsLayoutTokenNVX =
             #{offset VkIndirectCommandsLayoutTokenNVX, divisor}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkIndirectCommandsLayoutTokenNVX, divisor}

instance CanReadField "divisor" VkIndirectCommandsLayoutTokenNVX
         where
        {-# INLINE getField #-}
        getField = vkDivisor

        {-# INLINE readField #-}
        readField = readVkDivisor

instance CanWriteField "divisor" VkIndirectCommandsLayoutTokenNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkDivisor

instance Show VkIndirectCommandsLayoutTokenNVX where
        showsPrec d x
          = showString "VkIndirectCommandsLayoutTokenNVX {" .
              showString "vkTokenType = " .
                showsPrec d (vkTokenType x) .
                  showString ", " .
                    showString "vkBindingUnit = " .
                      showsPrec d (vkBindingUnit x) .
                        showString ", " .
                          showString "vkDynamicCount = " .
                            showsPrec d (vkDynamicCount x) .
                              showString ", " .
                                showString "vkDivisor = " .
                                  showsPrec d (vkDivisor x) . showChar '}'

-- | > typedef struct VkIndirectCommandsLayoutCreateInfoNVX {
--   >     VkStructureType sType;
--   >     const void*                      pNext;
--   >     VkPipelineBindPoint                      pipelineBindPoint;
--   >     VkIndirectCommandsLayoutUsageFlagsNVX    flags;
--   >     uint32_t                                 tokenCount;
--   >     const VkIndirectCommandsLayoutTokenNVX*  pTokens;
--   > } VkIndirectCommandsLayoutCreateInfoNVX;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/VkIndirectCommandsLayoutCreateInfoNVX.html VkIndirectCommandsLayoutCreateInfoNVX registry at www.khronos.org>
data VkIndirectCommandsLayoutCreateInfoNVX = VkIndirectCommandsLayoutCreateInfoNVX## ByteArray##

instance Eq VkIndirectCommandsLayoutCreateInfoNVX where
        (VkIndirectCommandsLayoutCreateInfoNVX## a) ==
          (VkIndirectCommandsLayoutCreateInfoNVX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkIndirectCommandsLayoutCreateInfoNVX where
        (VkIndirectCommandsLayoutCreateInfoNVX## a) `compare`
          (VkIndirectCommandsLayoutCreateInfoNVX## b)
          = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkIndirectCommandsLayoutCreateInfoNVX where
        sizeOf ~_
          = #{size VkIndirectCommandsLayoutCreateInfoNVX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkIndirectCommandsLayoutCreateInfoNVX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf
                      (undefined :: VkIndirectCommandsLayoutCreateInfoNVX),
            I## a <- alignment
                      (undefined :: VkIndirectCommandsLayoutCreateInfoNVX)
            =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkIndirectCommandsLayoutCreateInfoNVX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkIndirectCommandsLayoutCreateInfoNVX## ba)
          | I## n <- sizeOf
                      (undefined :: VkIndirectCommandsLayoutCreateInfoNVX)
            = IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkIndirectCommandsLayoutCreateInfoNVX where
        type StructFields VkIndirectCommandsLayoutCreateInfoNVX =
             '["sType", "pNext", "pipelineBindPoint", "flags", "tokenCount", -- ' closing tick for hsc2hs
               "pTokens"]

        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf
                      (undefined :: VkIndirectCommandsLayoutCreateInfoNVX),
            I## a <- alignment
                      (undefined :: VkIndirectCommandsLayoutCreateInfoNVX)
            =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkIndirectCommandsLayoutCreateInfoNVX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkIndirectCommandsLayoutCreateInfoNVX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr
          = fromForeignPtr## VkIndirectCommandsLayoutCreateInfoNVX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkIndirectCommandsLayoutCreateInfoNVX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkIndirectCommandsLayoutCreateInfoNVX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkIndirectCommandsLayoutCreateInfoNVX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkSType VkIndirectCommandsLayoutCreateInfoNVX where
        type VkSTypeMType VkIndirectCommandsLayoutCreateInfoNVX =
             VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkIndirectCommandsLayoutCreateInfoNVX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkIndirectCommandsLayoutCreateInfoNVX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkIndirectCommandsLayoutCreateInfoNVX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkIndirectCommandsLayoutCreateInfoNVX, sType}

instance {-# OVERLAPPING #-}
         HasField "sType" VkIndirectCommandsLayoutCreateInfoNVX where
        type FieldType "sType" VkIndirectCommandsLayoutCreateInfoNVX =
             VkStructureType
        type FieldOptional "sType" VkIndirectCommandsLayoutCreateInfoNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "sType" VkIndirectCommandsLayoutCreateInfoNVX =
             #{offset VkIndirectCommandsLayoutCreateInfoNVX, sType}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkIndirectCommandsLayoutCreateInfoNVX, sType}

instance CanReadField "sType" VkIndirectCommandsLayoutCreateInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkSType

        {-# INLINE readField #-}
        readField = readVkSType

instance CanWriteField "sType"
           VkIndirectCommandsLayoutCreateInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkSType

instance {-# OVERLAPPING #-}
         HasVkPNext VkIndirectCommandsLayoutCreateInfoNVX where
        type VkPNextMType VkIndirectCommandsLayoutCreateInfoNVX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkIndirectCommandsLayoutCreateInfoNVX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkIndirectCommandsLayoutCreateInfoNVX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkIndirectCommandsLayoutCreateInfoNVX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkIndirectCommandsLayoutCreateInfoNVX, pNext}

instance {-# OVERLAPPING #-}
         HasField "pNext" VkIndirectCommandsLayoutCreateInfoNVX where
        type FieldType "pNext" VkIndirectCommandsLayoutCreateInfoNVX =
             Ptr Void
        type FieldOptional "pNext" VkIndirectCommandsLayoutCreateInfoNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "pNext" VkIndirectCommandsLayoutCreateInfoNVX =
             #{offset VkIndirectCommandsLayoutCreateInfoNVX, pNext}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkIndirectCommandsLayoutCreateInfoNVX, pNext}

instance CanReadField "pNext" VkIndirectCommandsLayoutCreateInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkPNext

        {-# INLINE readField #-}
        readField = readVkPNext

instance CanWriteField "pNext"
           VkIndirectCommandsLayoutCreateInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkPNext

instance {-# OVERLAPPING #-}
         HasVkPipelineBindPoint VkIndirectCommandsLayoutCreateInfoNVX where
        type VkPipelineBindPointMType VkIndirectCommandsLayoutCreateInfoNVX
             = VkPipelineBindPoint

        {-# NOINLINE vkPipelineBindPoint #-}
        vkPipelineBindPoint x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkIndirectCommandsLayoutCreateInfoNVX, pipelineBindPoint})

        {-# INLINE vkPipelineBindPointByteOffset #-}
        vkPipelineBindPointByteOffset ~_
          = #{offset VkIndirectCommandsLayoutCreateInfoNVX, pipelineBindPoint}

        {-# INLINE readVkPipelineBindPoint #-}
        readVkPipelineBindPoint p
          = peekByteOff p #{offset VkIndirectCommandsLayoutCreateInfoNVX, pipelineBindPoint}

        {-# INLINE writeVkPipelineBindPoint #-}
        writeVkPipelineBindPoint p
          = pokeByteOff p #{offset VkIndirectCommandsLayoutCreateInfoNVX, pipelineBindPoint}

instance {-# OVERLAPPING #-}
         HasField "pipelineBindPoint" VkIndirectCommandsLayoutCreateInfoNVX
         where
        type FieldType "pipelineBindPoint"
               VkIndirectCommandsLayoutCreateInfoNVX
             = VkPipelineBindPoint
        type FieldOptional "pipelineBindPoint"
               VkIndirectCommandsLayoutCreateInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pipelineBindPoint"
               VkIndirectCommandsLayoutCreateInfoNVX
             =
             #{offset VkIndirectCommandsLayoutCreateInfoNVX, pipelineBindPoint}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkIndirectCommandsLayoutCreateInfoNVX, pipelineBindPoint}

instance CanReadField "pipelineBindPoint"
           VkIndirectCommandsLayoutCreateInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkPipelineBindPoint

        {-# INLINE readField #-}
        readField = readVkPipelineBindPoint

instance CanWriteField "pipelineBindPoint"
           VkIndirectCommandsLayoutCreateInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkPipelineBindPoint

instance {-# OVERLAPPING #-}
         HasVkFlags VkIndirectCommandsLayoutCreateInfoNVX where
        type VkFlagsMType VkIndirectCommandsLayoutCreateInfoNVX =
             VkIndirectCommandsLayoutUsageFlagsNVX

        {-# NOINLINE vkFlags #-}
        vkFlags x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkIndirectCommandsLayoutCreateInfoNVX, flags})

        {-# INLINE vkFlagsByteOffset #-}
        vkFlagsByteOffset ~_
          = #{offset VkIndirectCommandsLayoutCreateInfoNVX, flags}

        {-# INLINE readVkFlags #-}
        readVkFlags p
          = peekByteOff p #{offset VkIndirectCommandsLayoutCreateInfoNVX, flags}

        {-# INLINE writeVkFlags #-}
        writeVkFlags p
          = pokeByteOff p #{offset VkIndirectCommandsLayoutCreateInfoNVX, flags}

instance {-# OVERLAPPING #-}
         HasField "flags" VkIndirectCommandsLayoutCreateInfoNVX where
        type FieldType "flags" VkIndirectCommandsLayoutCreateInfoNVX =
             VkIndirectCommandsLayoutUsageFlagsNVX
        type FieldOptional "flags" VkIndirectCommandsLayoutCreateInfoNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "flags" VkIndirectCommandsLayoutCreateInfoNVX =
             #{offset VkIndirectCommandsLayoutCreateInfoNVX, flags}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkIndirectCommandsLayoutCreateInfoNVX, flags}

instance CanReadField "flags" VkIndirectCommandsLayoutCreateInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkFlags

        {-# INLINE readField #-}
        readField = readVkFlags

instance CanWriteField "flags"
           VkIndirectCommandsLayoutCreateInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkFlags

instance {-# OVERLAPPING #-}
         HasVkTokenCount VkIndirectCommandsLayoutCreateInfoNVX where
        type VkTokenCountMType VkIndirectCommandsLayoutCreateInfoNVX =
             Word32

        {-# NOINLINE vkTokenCount #-}
        vkTokenCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkIndirectCommandsLayoutCreateInfoNVX, tokenCount})

        {-# INLINE vkTokenCountByteOffset #-}
        vkTokenCountByteOffset ~_
          = #{offset VkIndirectCommandsLayoutCreateInfoNVX, tokenCount}

        {-# INLINE readVkTokenCount #-}
        readVkTokenCount p
          = peekByteOff p #{offset VkIndirectCommandsLayoutCreateInfoNVX, tokenCount}

        {-# INLINE writeVkTokenCount #-}
        writeVkTokenCount p
          = pokeByteOff p #{offset VkIndirectCommandsLayoutCreateInfoNVX, tokenCount}

instance {-# OVERLAPPING #-}
         HasField "tokenCount" VkIndirectCommandsLayoutCreateInfoNVX where
        type FieldType "tokenCount" VkIndirectCommandsLayoutCreateInfoNVX =
             Word32
        type FieldOptional "tokenCount"
               VkIndirectCommandsLayoutCreateInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "tokenCount" VkIndirectCommandsLayoutCreateInfoNVX
             =
             #{offset VkIndirectCommandsLayoutCreateInfoNVX, tokenCount}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkIndirectCommandsLayoutCreateInfoNVX, tokenCount}

instance CanReadField "tokenCount"
           VkIndirectCommandsLayoutCreateInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkTokenCount

        {-# INLINE readField #-}
        readField = readVkTokenCount

instance CanWriteField "tokenCount"
           VkIndirectCommandsLayoutCreateInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkTokenCount

instance {-# OVERLAPPING #-}
         HasVkPTokens VkIndirectCommandsLayoutCreateInfoNVX where
        type VkPTokensMType VkIndirectCommandsLayoutCreateInfoNVX =
             Ptr VkIndirectCommandsLayoutTokenNVX

        {-# NOINLINE vkPTokens #-}
        vkPTokens x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkIndirectCommandsLayoutCreateInfoNVX, pTokens})

        {-# INLINE vkPTokensByteOffset #-}
        vkPTokensByteOffset ~_
          = #{offset VkIndirectCommandsLayoutCreateInfoNVX, pTokens}

        {-# INLINE readVkPTokens #-}
        readVkPTokens p
          = peekByteOff p #{offset VkIndirectCommandsLayoutCreateInfoNVX, pTokens}

        {-# INLINE writeVkPTokens #-}
        writeVkPTokens p
          = pokeByteOff p #{offset VkIndirectCommandsLayoutCreateInfoNVX, pTokens}

instance {-# OVERLAPPING #-}
         HasField "pTokens" VkIndirectCommandsLayoutCreateInfoNVX where
        type FieldType "pTokens" VkIndirectCommandsLayoutCreateInfoNVX =
             Ptr VkIndirectCommandsLayoutTokenNVX
        type FieldOptional "pTokens" VkIndirectCommandsLayoutCreateInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pTokens" VkIndirectCommandsLayoutCreateInfoNVX =
             #{offset VkIndirectCommandsLayoutCreateInfoNVX, pTokens}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkIndirectCommandsLayoutCreateInfoNVX, pTokens}

instance CanReadField "pTokens"
           VkIndirectCommandsLayoutCreateInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkPTokens

        {-# INLINE readField #-}
        readField = readVkPTokens

instance CanWriteField "pTokens"
           VkIndirectCommandsLayoutCreateInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkPTokens

instance Show VkIndirectCommandsLayoutCreateInfoNVX where
        showsPrec d x
          = showString "VkIndirectCommandsLayoutCreateInfoNVX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkPipelineBindPoint = " .
                            showsPrec d (vkPipelineBindPoint x) .
                              showString ", " .
                                showString "vkFlags = " .
                                  showsPrec d (vkFlags x) .
                                    showString ", " .
                                      showString "vkTokenCount = " .
                                        showsPrec d (vkTokenCount x) .
                                          showString ", " .
                                            showString "vkPTokens = " .
                                              showsPrec d (vkPTokens x) . showChar '}'

-- | > typedef struct VkCmdProcessCommandsInfoNVX {
--   >     VkStructureType sType;
--   >     const void*                      pNext;
--   >     VkObjectTableNVX                                         objectTable;
--   >     VkIndirectCommandsLayoutNVX                              indirectCommandsLayout;
--   >     uint32_t                                                 indirectCommandsTokenCount;
--   >     const VkIndirectCommandsTokenNVX*       pIndirectCommandsTokens;
--   >     uint32_t                                                 maxSequencesCount;
--   >     VkCommandBuffer                          targetCommandBuffer;
--   >     VkBuffer                                 sequencesCountBuffer;
--   >     VkDeviceSize                             sequencesCountOffset;
--   >     VkBuffer                                 sequencesIndexBuffer;
--   >     VkDeviceSize                             sequencesIndexOffset;
--   > } VkCmdProcessCommandsInfoNVX;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/VkCmdProcessCommandsInfoNVX.html VkCmdProcessCommandsInfoNVX registry at www.khronos.org>
data VkCmdProcessCommandsInfoNVX = VkCmdProcessCommandsInfoNVX## ByteArray##

instance Eq VkCmdProcessCommandsInfoNVX where
        (VkCmdProcessCommandsInfoNVX## a) ==
          (VkCmdProcessCommandsInfoNVX## b) = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkCmdProcessCommandsInfoNVX where
        (VkCmdProcessCommandsInfoNVX## a) `compare`
          (VkCmdProcessCommandsInfoNVX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkCmdProcessCommandsInfoNVX where
        sizeOf ~_ = #{size VkCmdProcessCommandsInfoNVX}

        {-# INLINE sizeOf #-}
        alignment ~_ = #{alignment VkCmdProcessCommandsInfoNVX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkCmdProcessCommandsInfoNVX),
            I## a <- alignment (undefined :: VkCmdProcessCommandsInfoNVX) =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkCmdProcessCommandsInfoNVX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkCmdProcessCommandsInfoNVX## ba)
          | I## n <- sizeOf (undefined :: VkCmdProcessCommandsInfoNVX) =
            IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkCmdProcessCommandsInfoNVX where
        type StructFields VkCmdProcessCommandsInfoNVX =
             '["sType", "pNext", "objectTable", "indirectCommandsLayout", -- ' closing tick for hsc2hs
               "indirectCommandsTokenCount", "pIndirectCommandsTokens",
               "maxSequencesCount", "targetCommandBuffer", "sequencesCountBuffer",
               "sequencesCountOffset", "sequencesIndexBuffer",
               "sequencesIndexOffset"]

        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkCmdProcessCommandsInfoNVX),
            I## a <- alignment (undefined :: VkCmdProcessCommandsInfoNVX) =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkCmdProcessCommandsInfoNVX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkCmdProcessCommandsInfoNVX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr = fromForeignPtr## VkCmdProcessCommandsInfoNVX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkCmdProcessCommandsInfoNVX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkCmdProcessCommandsInfoNVX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkCmdProcessCommandsInfoNVX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-} HasVkSType VkCmdProcessCommandsInfoNVX
         where
        type VkSTypeMType VkCmdProcessCommandsInfoNVX = VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdProcessCommandsInfoNVX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkCmdProcessCommandsInfoNVX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkCmdProcessCommandsInfoNVX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkCmdProcessCommandsInfoNVX, sType}

instance {-# OVERLAPPING #-}
         HasField "sType" VkCmdProcessCommandsInfoNVX where
        type FieldType "sType" VkCmdProcessCommandsInfoNVX =
             VkStructureType
        type FieldOptional "sType" VkCmdProcessCommandsInfoNVX = 'False -- ' closing tick for hsc2hs
        type FieldOffset "sType" VkCmdProcessCommandsInfoNVX =
             #{offset VkCmdProcessCommandsInfoNVX, sType}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdProcessCommandsInfoNVX, sType}

instance CanReadField "sType" VkCmdProcessCommandsInfoNVX where
        {-# INLINE getField #-}
        getField = vkSType

        {-# INLINE readField #-}
        readField = readVkSType

instance CanWriteField "sType" VkCmdProcessCommandsInfoNVX where
        {-# INLINE writeField #-}
        writeField = writeVkSType

instance {-# OVERLAPPING #-} HasVkPNext VkCmdProcessCommandsInfoNVX
         where
        type VkPNextMType VkCmdProcessCommandsInfoNVX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdProcessCommandsInfoNVX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkCmdProcessCommandsInfoNVX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkCmdProcessCommandsInfoNVX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkCmdProcessCommandsInfoNVX, pNext}

instance {-# OVERLAPPING #-}
         HasField "pNext" VkCmdProcessCommandsInfoNVX where
        type FieldType "pNext" VkCmdProcessCommandsInfoNVX = Ptr Void
        type FieldOptional "pNext" VkCmdProcessCommandsInfoNVX = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pNext" VkCmdProcessCommandsInfoNVX =
             #{offset VkCmdProcessCommandsInfoNVX, pNext}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdProcessCommandsInfoNVX, pNext}

instance CanReadField "pNext" VkCmdProcessCommandsInfoNVX where
        {-# INLINE getField #-}
        getField = vkPNext

        {-# INLINE readField #-}
        readField = readVkPNext

instance CanWriteField "pNext" VkCmdProcessCommandsInfoNVX where
        {-# INLINE writeField #-}
        writeField = writeVkPNext

instance {-# OVERLAPPING #-}
         HasVkObjectTable VkCmdProcessCommandsInfoNVX where
        type VkObjectTableMType VkCmdProcessCommandsInfoNVX =
             VkObjectTableNVX

        {-# NOINLINE vkObjectTable #-}
        vkObjectTable x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdProcessCommandsInfoNVX, objectTable})

        {-# INLINE vkObjectTableByteOffset #-}
        vkObjectTableByteOffset ~_
          = #{offset VkCmdProcessCommandsInfoNVX, objectTable}

        {-# INLINE readVkObjectTable #-}
        readVkObjectTable p
          = peekByteOff p #{offset VkCmdProcessCommandsInfoNVX, objectTable}

        {-# INLINE writeVkObjectTable #-}
        writeVkObjectTable p
          = pokeByteOff p #{offset VkCmdProcessCommandsInfoNVX, objectTable}

instance {-# OVERLAPPING #-}
         HasField "objectTable" VkCmdProcessCommandsInfoNVX where
        type FieldType "objectTable" VkCmdProcessCommandsInfoNVX =
             VkObjectTableNVX
        type FieldOptional "objectTable" VkCmdProcessCommandsInfoNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "objectTable" VkCmdProcessCommandsInfoNVX =
             #{offset VkCmdProcessCommandsInfoNVX, objectTable}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdProcessCommandsInfoNVX, objectTable}

instance CanReadField "objectTable" VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkObjectTable

        {-# INLINE readField #-}
        readField = readVkObjectTable

instance CanWriteField "objectTable" VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkObjectTable

instance {-# OVERLAPPING #-}
         HasVkIndirectCommandsLayout VkCmdProcessCommandsInfoNVX where
        type VkIndirectCommandsLayoutMType VkCmdProcessCommandsInfoNVX =
             VkIndirectCommandsLayoutNVX

        {-# NOINLINE vkIndirectCommandsLayout #-}
        vkIndirectCommandsLayout x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdProcessCommandsInfoNVX, indirectCommandsLayout})

        {-# INLINE vkIndirectCommandsLayoutByteOffset #-}
        vkIndirectCommandsLayoutByteOffset ~_
          = #{offset VkCmdProcessCommandsInfoNVX, indirectCommandsLayout}

        {-# INLINE readVkIndirectCommandsLayout #-}
        readVkIndirectCommandsLayout p
          = peekByteOff p #{offset VkCmdProcessCommandsInfoNVX, indirectCommandsLayout}

        {-# INLINE writeVkIndirectCommandsLayout #-}
        writeVkIndirectCommandsLayout p
          = pokeByteOff p #{offset VkCmdProcessCommandsInfoNVX, indirectCommandsLayout}

instance {-# OVERLAPPING #-}
         HasField "indirectCommandsLayout" VkCmdProcessCommandsInfoNVX where
        type FieldType "indirectCommandsLayout" VkCmdProcessCommandsInfoNVX
             = VkIndirectCommandsLayoutNVX
        type FieldOptional "indirectCommandsLayout"
               VkCmdProcessCommandsInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "indirectCommandsLayout"
               VkCmdProcessCommandsInfoNVX
             =
             #{offset VkCmdProcessCommandsInfoNVX, indirectCommandsLayout}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdProcessCommandsInfoNVX, indirectCommandsLayout}

instance CanReadField "indirectCommandsLayout"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkIndirectCommandsLayout

        {-# INLINE readField #-}
        readField = readVkIndirectCommandsLayout

instance CanWriteField "indirectCommandsLayout"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkIndirectCommandsLayout

instance {-# OVERLAPPING #-}
         HasVkIndirectCommandsTokenCount VkCmdProcessCommandsInfoNVX where
        type VkIndirectCommandsTokenCountMType VkCmdProcessCommandsInfoNVX
             = Word32

        {-# NOINLINE vkIndirectCommandsTokenCount #-}
        vkIndirectCommandsTokenCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdProcessCommandsInfoNVX, indirectCommandsTokenCount})

        {-# INLINE vkIndirectCommandsTokenCountByteOffset #-}
        vkIndirectCommandsTokenCountByteOffset ~_
          = #{offset VkCmdProcessCommandsInfoNVX, indirectCommandsTokenCount}

        {-# INLINE readVkIndirectCommandsTokenCount #-}
        readVkIndirectCommandsTokenCount p
          = peekByteOff p #{offset VkCmdProcessCommandsInfoNVX, indirectCommandsTokenCount}

        {-# INLINE writeVkIndirectCommandsTokenCount #-}
        writeVkIndirectCommandsTokenCount p
          = pokeByteOff p #{offset VkCmdProcessCommandsInfoNVX, indirectCommandsTokenCount}

instance {-# OVERLAPPING #-}
         HasField "indirectCommandsTokenCount" VkCmdProcessCommandsInfoNVX
         where
        type FieldType "indirectCommandsTokenCount"
               VkCmdProcessCommandsInfoNVX
             = Word32
        type FieldOptional "indirectCommandsTokenCount"
               VkCmdProcessCommandsInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "indirectCommandsTokenCount"
               VkCmdProcessCommandsInfoNVX
             =
             #{offset VkCmdProcessCommandsInfoNVX, indirectCommandsTokenCount}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdProcessCommandsInfoNVX, indirectCommandsTokenCount}

instance CanReadField "indirectCommandsTokenCount"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkIndirectCommandsTokenCount

        {-# INLINE readField #-}
        readField = readVkIndirectCommandsTokenCount

instance CanWriteField "indirectCommandsTokenCount"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkIndirectCommandsTokenCount

instance {-# OVERLAPPING #-}
         HasVkPIndirectCommandsTokens VkCmdProcessCommandsInfoNVX where
        type VkPIndirectCommandsTokensMType VkCmdProcessCommandsInfoNVX =
             Ptr VkIndirectCommandsTokenNVX

        {-# NOINLINE vkPIndirectCommandsTokens #-}
        vkPIndirectCommandsTokens x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdProcessCommandsInfoNVX, pIndirectCommandsTokens})

        {-# INLINE vkPIndirectCommandsTokensByteOffset #-}
        vkPIndirectCommandsTokensByteOffset ~_
          = #{offset VkCmdProcessCommandsInfoNVX, pIndirectCommandsTokens}

        {-# INLINE readVkPIndirectCommandsTokens #-}
        readVkPIndirectCommandsTokens p
          = peekByteOff p #{offset VkCmdProcessCommandsInfoNVX, pIndirectCommandsTokens}

        {-# INLINE writeVkPIndirectCommandsTokens #-}
        writeVkPIndirectCommandsTokens p
          = pokeByteOff p #{offset VkCmdProcessCommandsInfoNVX, pIndirectCommandsTokens}

instance {-# OVERLAPPING #-}
         HasField "pIndirectCommandsTokens" VkCmdProcessCommandsInfoNVX
         where
        type FieldType "pIndirectCommandsTokens"
               VkCmdProcessCommandsInfoNVX
             = Ptr VkIndirectCommandsTokenNVX
        type FieldOptional "pIndirectCommandsTokens"
               VkCmdProcessCommandsInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pIndirectCommandsTokens"
               VkCmdProcessCommandsInfoNVX
             =
             #{offset VkCmdProcessCommandsInfoNVX, pIndirectCommandsTokens}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdProcessCommandsInfoNVX, pIndirectCommandsTokens}

instance CanReadField "pIndirectCommandsTokens"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkPIndirectCommandsTokens

        {-# INLINE readField #-}
        readField = readVkPIndirectCommandsTokens

instance CanWriteField "pIndirectCommandsTokens"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkPIndirectCommandsTokens

instance {-# OVERLAPPING #-}
         HasVkMaxSequencesCount VkCmdProcessCommandsInfoNVX where
        type VkMaxSequencesCountMType VkCmdProcessCommandsInfoNVX = Word32

        {-# NOINLINE vkMaxSequencesCount #-}
        vkMaxSequencesCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdProcessCommandsInfoNVX, maxSequencesCount})

        {-# INLINE vkMaxSequencesCountByteOffset #-}
        vkMaxSequencesCountByteOffset ~_
          = #{offset VkCmdProcessCommandsInfoNVX, maxSequencesCount}

        {-# INLINE readVkMaxSequencesCount #-}
        readVkMaxSequencesCount p
          = peekByteOff p #{offset VkCmdProcessCommandsInfoNVX, maxSequencesCount}

        {-# INLINE writeVkMaxSequencesCount #-}
        writeVkMaxSequencesCount p
          = pokeByteOff p #{offset VkCmdProcessCommandsInfoNVX, maxSequencesCount}

instance {-# OVERLAPPING #-}
         HasField "maxSequencesCount" VkCmdProcessCommandsInfoNVX where
        type FieldType "maxSequencesCount" VkCmdProcessCommandsInfoNVX =
             Word32
        type FieldOptional "maxSequencesCount" VkCmdProcessCommandsInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "maxSequencesCount" VkCmdProcessCommandsInfoNVX =
             #{offset VkCmdProcessCommandsInfoNVX, maxSequencesCount}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdProcessCommandsInfoNVX, maxSequencesCount}

instance CanReadField "maxSequencesCount"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkMaxSequencesCount

        {-# INLINE readField #-}
        readField = readVkMaxSequencesCount

instance CanWriteField "maxSequencesCount"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkMaxSequencesCount

instance {-# OVERLAPPING #-}
         HasVkTargetCommandBuffer VkCmdProcessCommandsInfoNVX where
        type VkTargetCommandBufferMType VkCmdProcessCommandsInfoNVX =
             VkCommandBuffer

        {-# NOINLINE vkTargetCommandBuffer #-}
        vkTargetCommandBuffer x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdProcessCommandsInfoNVX, targetCommandBuffer})

        {-# INLINE vkTargetCommandBufferByteOffset #-}
        vkTargetCommandBufferByteOffset ~_
          = #{offset VkCmdProcessCommandsInfoNVX, targetCommandBuffer}

        {-# INLINE readVkTargetCommandBuffer #-}
        readVkTargetCommandBuffer p
          = peekByteOff p #{offset VkCmdProcessCommandsInfoNVX, targetCommandBuffer}

        {-# INLINE writeVkTargetCommandBuffer #-}
        writeVkTargetCommandBuffer p
          = pokeByteOff p #{offset VkCmdProcessCommandsInfoNVX, targetCommandBuffer}

instance {-# OVERLAPPING #-}
         HasField "targetCommandBuffer" VkCmdProcessCommandsInfoNVX where
        type FieldType "targetCommandBuffer" VkCmdProcessCommandsInfoNVX =
             VkCommandBuffer
        type FieldOptional "targetCommandBuffer"
               VkCmdProcessCommandsInfoNVX
             = 'True -- ' closing tick for hsc2hs
        type FieldOffset "targetCommandBuffer" VkCmdProcessCommandsInfoNVX
             =
             #{offset VkCmdProcessCommandsInfoNVX, targetCommandBuffer}

        {-# INLINE fieldOptional #-}
        fieldOptional = True

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdProcessCommandsInfoNVX, targetCommandBuffer}

instance CanReadField "targetCommandBuffer"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkTargetCommandBuffer

        {-# INLINE readField #-}
        readField = readVkTargetCommandBuffer

instance CanWriteField "targetCommandBuffer"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkTargetCommandBuffer

instance {-# OVERLAPPING #-}
         HasVkSequencesCountBuffer VkCmdProcessCommandsInfoNVX where
        type VkSequencesCountBufferMType VkCmdProcessCommandsInfoNVX =
             VkBuffer

        {-# NOINLINE vkSequencesCountBuffer #-}
        vkSequencesCountBuffer x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdProcessCommandsInfoNVX, sequencesCountBuffer})

        {-# INLINE vkSequencesCountBufferByteOffset #-}
        vkSequencesCountBufferByteOffset ~_
          = #{offset VkCmdProcessCommandsInfoNVX, sequencesCountBuffer}

        {-# INLINE readVkSequencesCountBuffer #-}
        readVkSequencesCountBuffer p
          = peekByteOff p #{offset VkCmdProcessCommandsInfoNVX, sequencesCountBuffer}

        {-# INLINE writeVkSequencesCountBuffer #-}
        writeVkSequencesCountBuffer p
          = pokeByteOff p #{offset VkCmdProcessCommandsInfoNVX, sequencesCountBuffer}

instance {-# OVERLAPPING #-}
         HasField "sequencesCountBuffer" VkCmdProcessCommandsInfoNVX where
        type FieldType "sequencesCountBuffer" VkCmdProcessCommandsInfoNVX =
             VkBuffer
        type FieldOptional "sequencesCountBuffer"
               VkCmdProcessCommandsInfoNVX
             = 'True -- ' closing tick for hsc2hs
        type FieldOffset "sequencesCountBuffer" VkCmdProcessCommandsInfoNVX
             =
             #{offset VkCmdProcessCommandsInfoNVX, sequencesCountBuffer}

        {-# INLINE fieldOptional #-}
        fieldOptional = True

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdProcessCommandsInfoNVX, sequencesCountBuffer}

instance CanReadField "sequencesCountBuffer"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkSequencesCountBuffer

        {-# INLINE readField #-}
        readField = readVkSequencesCountBuffer

instance CanWriteField "sequencesCountBuffer"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkSequencesCountBuffer

instance {-# OVERLAPPING #-}
         HasVkSequencesCountOffset VkCmdProcessCommandsInfoNVX where
        type VkSequencesCountOffsetMType VkCmdProcessCommandsInfoNVX =
             VkDeviceSize

        {-# NOINLINE vkSequencesCountOffset #-}
        vkSequencesCountOffset x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdProcessCommandsInfoNVX, sequencesCountOffset})

        {-# INLINE vkSequencesCountOffsetByteOffset #-}
        vkSequencesCountOffsetByteOffset ~_
          = #{offset VkCmdProcessCommandsInfoNVX, sequencesCountOffset}

        {-# INLINE readVkSequencesCountOffset #-}
        readVkSequencesCountOffset p
          = peekByteOff p #{offset VkCmdProcessCommandsInfoNVX, sequencesCountOffset}

        {-# INLINE writeVkSequencesCountOffset #-}
        writeVkSequencesCountOffset p
          = pokeByteOff p #{offset VkCmdProcessCommandsInfoNVX, sequencesCountOffset}

instance {-# OVERLAPPING #-}
         HasField "sequencesCountOffset" VkCmdProcessCommandsInfoNVX where
        type FieldType "sequencesCountOffset" VkCmdProcessCommandsInfoNVX =
             VkDeviceSize
        type FieldOptional "sequencesCountOffset"
               VkCmdProcessCommandsInfoNVX
             = 'True -- ' closing tick for hsc2hs
        type FieldOffset "sequencesCountOffset" VkCmdProcessCommandsInfoNVX
             =
             #{offset VkCmdProcessCommandsInfoNVX, sequencesCountOffset}

        {-# INLINE fieldOptional #-}
        fieldOptional = True

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdProcessCommandsInfoNVX, sequencesCountOffset}

instance CanReadField "sequencesCountOffset"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkSequencesCountOffset

        {-# INLINE readField #-}
        readField = readVkSequencesCountOffset

instance CanWriteField "sequencesCountOffset"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkSequencesCountOffset

instance {-# OVERLAPPING #-}
         HasVkSequencesIndexBuffer VkCmdProcessCommandsInfoNVX where
        type VkSequencesIndexBufferMType VkCmdProcessCommandsInfoNVX =
             VkBuffer

        {-# NOINLINE vkSequencesIndexBuffer #-}
        vkSequencesIndexBuffer x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdProcessCommandsInfoNVX, sequencesIndexBuffer})

        {-# INLINE vkSequencesIndexBufferByteOffset #-}
        vkSequencesIndexBufferByteOffset ~_
          = #{offset VkCmdProcessCommandsInfoNVX, sequencesIndexBuffer}

        {-# INLINE readVkSequencesIndexBuffer #-}
        readVkSequencesIndexBuffer p
          = peekByteOff p #{offset VkCmdProcessCommandsInfoNVX, sequencesIndexBuffer}

        {-# INLINE writeVkSequencesIndexBuffer #-}
        writeVkSequencesIndexBuffer p
          = pokeByteOff p #{offset VkCmdProcessCommandsInfoNVX, sequencesIndexBuffer}

instance {-# OVERLAPPING #-}
         HasField "sequencesIndexBuffer" VkCmdProcessCommandsInfoNVX where
        type FieldType "sequencesIndexBuffer" VkCmdProcessCommandsInfoNVX =
             VkBuffer
        type FieldOptional "sequencesIndexBuffer"
               VkCmdProcessCommandsInfoNVX
             = 'True -- ' closing tick for hsc2hs
        type FieldOffset "sequencesIndexBuffer" VkCmdProcessCommandsInfoNVX
             =
             #{offset VkCmdProcessCommandsInfoNVX, sequencesIndexBuffer}

        {-# INLINE fieldOptional #-}
        fieldOptional = True

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdProcessCommandsInfoNVX, sequencesIndexBuffer}

instance CanReadField "sequencesIndexBuffer"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkSequencesIndexBuffer

        {-# INLINE readField #-}
        readField = readVkSequencesIndexBuffer

instance CanWriteField "sequencesIndexBuffer"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkSequencesIndexBuffer

instance {-# OVERLAPPING #-}
         HasVkSequencesIndexOffset VkCmdProcessCommandsInfoNVX where
        type VkSequencesIndexOffsetMType VkCmdProcessCommandsInfoNVX =
             VkDeviceSize

        {-# NOINLINE vkSequencesIndexOffset #-}
        vkSequencesIndexOffset x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdProcessCommandsInfoNVX, sequencesIndexOffset})

        {-# INLINE vkSequencesIndexOffsetByteOffset #-}
        vkSequencesIndexOffsetByteOffset ~_
          = #{offset VkCmdProcessCommandsInfoNVX, sequencesIndexOffset}

        {-# INLINE readVkSequencesIndexOffset #-}
        readVkSequencesIndexOffset p
          = peekByteOff p #{offset VkCmdProcessCommandsInfoNVX, sequencesIndexOffset}

        {-# INLINE writeVkSequencesIndexOffset #-}
        writeVkSequencesIndexOffset p
          = pokeByteOff p #{offset VkCmdProcessCommandsInfoNVX, sequencesIndexOffset}

instance {-# OVERLAPPING #-}
         HasField "sequencesIndexOffset" VkCmdProcessCommandsInfoNVX where
        type FieldType "sequencesIndexOffset" VkCmdProcessCommandsInfoNVX =
             VkDeviceSize
        type FieldOptional "sequencesIndexOffset"
               VkCmdProcessCommandsInfoNVX
             = 'True -- ' closing tick for hsc2hs
        type FieldOffset "sequencesIndexOffset" VkCmdProcessCommandsInfoNVX
             =
             #{offset VkCmdProcessCommandsInfoNVX, sequencesIndexOffset}

        {-# INLINE fieldOptional #-}
        fieldOptional = True

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdProcessCommandsInfoNVX, sequencesIndexOffset}

instance CanReadField "sequencesIndexOffset"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkSequencesIndexOffset

        {-# INLINE readField #-}
        readField = readVkSequencesIndexOffset

instance CanWriteField "sequencesIndexOffset"
           VkCmdProcessCommandsInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkSequencesIndexOffset

instance Show VkCmdProcessCommandsInfoNVX where
        showsPrec d x
          = showString "VkCmdProcessCommandsInfoNVX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkObjectTable = " .
                            showsPrec d (vkObjectTable x) .
                              showString ", " .
                                showString "vkIndirectCommandsLayout = " .
                                  showsPrec d (vkIndirectCommandsLayout x) .
                                    showString ", " .
                                      showString "vkIndirectCommandsTokenCount = " .
                                        showsPrec d (vkIndirectCommandsTokenCount x) .
                                          showString ", " .
                                            showString "vkPIndirectCommandsTokens = " .
                                              showsPrec d (vkPIndirectCommandsTokens x) .
                                                showString ", " .
                                                  showString "vkMaxSequencesCount = " .
                                                    showsPrec d (vkMaxSequencesCount x) .
                                                      showString ", " .
                                                        showString "vkTargetCommandBuffer = " .
                                                          showsPrec d (vkTargetCommandBuffer x) .
                                                            showString ", " .
                                                              showString "vkSequencesCountBuffer = "
                                                                .
                                                                showsPrec d
                                                                  (vkSequencesCountBuffer x)
                                                                  .
                                                                  showString ", " .
                                                                    showString
                                                                      "vkSequencesCountOffset = "
                                                                      .
                                                                      showsPrec d
                                                                        (vkSequencesCountOffset x)
                                                                        .
                                                                        showString ", " .
                                                                          showString
                                                                            "vkSequencesIndexBuffer = "
                                                                            .
                                                                            showsPrec d
                                                                              (vkSequencesIndexBuffer
                                                                                 x)
                                                                              .
                                                                              showString ", " .
                                                                                showString
                                                                                  "vkSequencesIndexOffset = "
                                                                                  .
                                                                                  showsPrec d
                                                                                    (vkSequencesIndexOffset
                                                                                       x)
                                                                                    . showChar '}'

-- | > typedef struct VkCmdReserveSpaceForCommandsInfoNVX {
--   >     VkStructureType sType;
--   >     const void*                      pNext;
--   >     VkObjectTableNVX                                         objectTable;
--   >     VkIndirectCommandsLayoutNVX                              indirectCommandsLayout;
--   >     uint32_t                                                 maxSequencesCount;
--   > } VkCmdReserveSpaceForCommandsInfoNVX;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/VkCmdReserveSpaceForCommandsInfoNVX.html VkCmdReserveSpaceForCommandsInfoNVX registry at www.khronos.org>
data VkCmdReserveSpaceForCommandsInfoNVX = VkCmdReserveSpaceForCommandsInfoNVX## ByteArray##

instance Eq VkCmdReserveSpaceForCommandsInfoNVX where
        (VkCmdReserveSpaceForCommandsInfoNVX## a) ==
          (VkCmdReserveSpaceForCommandsInfoNVX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkCmdReserveSpaceForCommandsInfoNVX where
        (VkCmdReserveSpaceForCommandsInfoNVX## a) `compare`
          (VkCmdReserveSpaceForCommandsInfoNVX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkCmdReserveSpaceForCommandsInfoNVX where
        sizeOf ~_ = #{size VkCmdReserveSpaceForCommandsInfoNVX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkCmdReserveSpaceForCommandsInfoNVX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf
                      (undefined :: VkCmdReserveSpaceForCommandsInfoNVX),
            I## a <- alignment
                      (undefined :: VkCmdReserveSpaceForCommandsInfoNVX)
            =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkCmdReserveSpaceForCommandsInfoNVX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkCmdReserveSpaceForCommandsInfoNVX## ba)
          | I## n <- sizeOf (undefined :: VkCmdReserveSpaceForCommandsInfoNVX)
            = IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkCmdReserveSpaceForCommandsInfoNVX where
        type StructFields VkCmdReserveSpaceForCommandsInfoNVX =
             '["sType", "pNext", "objectTable", "indirectCommandsLayout", -- ' closing tick for hsc2hs
               "maxSequencesCount"]

        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf
                      (undefined :: VkCmdReserveSpaceForCommandsInfoNVX),
            I## a <- alignment
                      (undefined :: VkCmdReserveSpaceForCommandsInfoNVX)
            =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkCmdReserveSpaceForCommandsInfoNVX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkCmdReserveSpaceForCommandsInfoNVX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr
          = fromForeignPtr## VkCmdReserveSpaceForCommandsInfoNVX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkCmdReserveSpaceForCommandsInfoNVX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkCmdReserveSpaceForCommandsInfoNVX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkCmdReserveSpaceForCommandsInfoNVX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkSType VkCmdReserveSpaceForCommandsInfoNVX where
        type VkSTypeMType VkCmdReserveSpaceForCommandsInfoNVX =
             VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdReserveSpaceForCommandsInfoNVX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkCmdReserveSpaceForCommandsInfoNVX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkCmdReserveSpaceForCommandsInfoNVX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkCmdReserveSpaceForCommandsInfoNVX, sType}

instance {-# OVERLAPPING #-}
         HasField "sType" VkCmdReserveSpaceForCommandsInfoNVX where
        type FieldType "sType" VkCmdReserveSpaceForCommandsInfoNVX =
             VkStructureType
        type FieldOptional "sType" VkCmdReserveSpaceForCommandsInfoNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "sType" VkCmdReserveSpaceForCommandsInfoNVX =
             #{offset VkCmdReserveSpaceForCommandsInfoNVX, sType}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdReserveSpaceForCommandsInfoNVX, sType}

instance CanReadField "sType" VkCmdReserveSpaceForCommandsInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkSType

        {-# INLINE readField #-}
        readField = readVkSType

instance CanWriteField "sType" VkCmdReserveSpaceForCommandsInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkSType

instance {-# OVERLAPPING #-}
         HasVkPNext VkCmdReserveSpaceForCommandsInfoNVX where
        type VkPNextMType VkCmdReserveSpaceForCommandsInfoNVX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdReserveSpaceForCommandsInfoNVX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkCmdReserveSpaceForCommandsInfoNVX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkCmdReserveSpaceForCommandsInfoNVX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkCmdReserveSpaceForCommandsInfoNVX, pNext}

instance {-# OVERLAPPING #-}
         HasField "pNext" VkCmdReserveSpaceForCommandsInfoNVX where
        type FieldType "pNext" VkCmdReserveSpaceForCommandsInfoNVX =
             Ptr Void
        type FieldOptional "pNext" VkCmdReserveSpaceForCommandsInfoNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "pNext" VkCmdReserveSpaceForCommandsInfoNVX =
             #{offset VkCmdReserveSpaceForCommandsInfoNVX, pNext}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdReserveSpaceForCommandsInfoNVX, pNext}

instance CanReadField "pNext" VkCmdReserveSpaceForCommandsInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkPNext

        {-# INLINE readField #-}
        readField = readVkPNext

instance CanWriteField "pNext" VkCmdReserveSpaceForCommandsInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkPNext

instance {-# OVERLAPPING #-}
         HasVkObjectTable VkCmdReserveSpaceForCommandsInfoNVX where
        type VkObjectTableMType VkCmdReserveSpaceForCommandsInfoNVX =
             VkObjectTableNVX

        {-# NOINLINE vkObjectTable #-}
        vkObjectTable x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdReserveSpaceForCommandsInfoNVX, objectTable})

        {-# INLINE vkObjectTableByteOffset #-}
        vkObjectTableByteOffset ~_
          = #{offset VkCmdReserveSpaceForCommandsInfoNVX, objectTable}

        {-# INLINE readVkObjectTable #-}
        readVkObjectTable p
          = peekByteOff p #{offset VkCmdReserveSpaceForCommandsInfoNVX, objectTable}

        {-# INLINE writeVkObjectTable #-}
        writeVkObjectTable p
          = pokeByteOff p #{offset VkCmdReserveSpaceForCommandsInfoNVX, objectTable}

instance {-# OVERLAPPING #-}
         HasField "objectTable" VkCmdReserveSpaceForCommandsInfoNVX where
        type FieldType "objectTable" VkCmdReserveSpaceForCommandsInfoNVX =
             VkObjectTableNVX
        type FieldOptional "objectTable"
               VkCmdReserveSpaceForCommandsInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "objectTable" VkCmdReserveSpaceForCommandsInfoNVX
             =
             #{offset VkCmdReserveSpaceForCommandsInfoNVX, objectTable}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdReserveSpaceForCommandsInfoNVX, objectTable}

instance CanReadField "objectTable"
           VkCmdReserveSpaceForCommandsInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkObjectTable

        {-# INLINE readField #-}
        readField = readVkObjectTable

instance CanWriteField "objectTable"
           VkCmdReserveSpaceForCommandsInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkObjectTable

instance {-# OVERLAPPING #-}
         HasVkIndirectCommandsLayout VkCmdReserveSpaceForCommandsInfoNVX
         where
        type VkIndirectCommandsLayoutMType
               VkCmdReserveSpaceForCommandsInfoNVX
             = VkIndirectCommandsLayoutNVX

        {-# NOINLINE vkIndirectCommandsLayout #-}
        vkIndirectCommandsLayout x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdReserveSpaceForCommandsInfoNVX, indirectCommandsLayout})

        {-# INLINE vkIndirectCommandsLayoutByteOffset #-}
        vkIndirectCommandsLayoutByteOffset ~_
          = #{offset VkCmdReserveSpaceForCommandsInfoNVX, indirectCommandsLayout}

        {-# INLINE readVkIndirectCommandsLayout #-}
        readVkIndirectCommandsLayout p
          = peekByteOff p #{offset VkCmdReserveSpaceForCommandsInfoNVX, indirectCommandsLayout}

        {-# INLINE writeVkIndirectCommandsLayout #-}
        writeVkIndirectCommandsLayout p
          = pokeByteOff p #{offset VkCmdReserveSpaceForCommandsInfoNVX, indirectCommandsLayout}

instance {-# OVERLAPPING #-}
         HasField "indirectCommandsLayout"
           VkCmdReserveSpaceForCommandsInfoNVX
         where
        type FieldType "indirectCommandsLayout"
               VkCmdReserveSpaceForCommandsInfoNVX
             = VkIndirectCommandsLayoutNVX
        type FieldOptional "indirectCommandsLayout"
               VkCmdReserveSpaceForCommandsInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "indirectCommandsLayout"
               VkCmdReserveSpaceForCommandsInfoNVX
             =
             #{offset VkCmdReserveSpaceForCommandsInfoNVX, indirectCommandsLayout}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdReserveSpaceForCommandsInfoNVX, indirectCommandsLayout}

instance CanReadField "indirectCommandsLayout"
           VkCmdReserveSpaceForCommandsInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkIndirectCommandsLayout

        {-# INLINE readField #-}
        readField = readVkIndirectCommandsLayout

instance CanWriteField "indirectCommandsLayout"
           VkCmdReserveSpaceForCommandsInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkIndirectCommandsLayout

instance {-# OVERLAPPING #-}
         HasVkMaxSequencesCount VkCmdReserveSpaceForCommandsInfoNVX where
        type VkMaxSequencesCountMType VkCmdReserveSpaceForCommandsInfoNVX =
             Word32

        {-# NOINLINE vkMaxSequencesCount #-}
        vkMaxSequencesCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkCmdReserveSpaceForCommandsInfoNVX, maxSequencesCount})

        {-# INLINE vkMaxSequencesCountByteOffset #-}
        vkMaxSequencesCountByteOffset ~_
          = #{offset VkCmdReserveSpaceForCommandsInfoNVX, maxSequencesCount}

        {-# INLINE readVkMaxSequencesCount #-}
        readVkMaxSequencesCount p
          = peekByteOff p #{offset VkCmdReserveSpaceForCommandsInfoNVX, maxSequencesCount}

        {-# INLINE writeVkMaxSequencesCount #-}
        writeVkMaxSequencesCount p
          = pokeByteOff p #{offset VkCmdReserveSpaceForCommandsInfoNVX, maxSequencesCount}

instance {-# OVERLAPPING #-}
         HasField "maxSequencesCount" VkCmdReserveSpaceForCommandsInfoNVX
         where
        type FieldType "maxSequencesCount"
               VkCmdReserveSpaceForCommandsInfoNVX
             = Word32
        type FieldOptional "maxSequencesCount"
               VkCmdReserveSpaceForCommandsInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "maxSequencesCount"
               VkCmdReserveSpaceForCommandsInfoNVX
             =
             #{offset VkCmdReserveSpaceForCommandsInfoNVX, maxSequencesCount}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkCmdReserveSpaceForCommandsInfoNVX, maxSequencesCount}

instance CanReadField "maxSequencesCount"
           VkCmdReserveSpaceForCommandsInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkMaxSequencesCount

        {-# INLINE readField #-}
        readField = readVkMaxSequencesCount

instance CanWriteField "maxSequencesCount"
           VkCmdReserveSpaceForCommandsInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkMaxSequencesCount

instance Show VkCmdReserveSpaceForCommandsInfoNVX where
        showsPrec d x
          = showString "VkCmdReserveSpaceForCommandsInfoNVX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkObjectTable = " .
                            showsPrec d (vkObjectTable x) .
                              showString ", " .
                                showString "vkIndirectCommandsLayout = " .
                                  showsPrec d (vkIndirectCommandsLayout x) .
                                    showString ", " .
                                      showString "vkMaxSequencesCount = " .
                                        showsPrec d (vkMaxSequencesCount x) . showChar '}'

-- | > typedef struct VkObjectTableCreateInfoNVX {
--   >     VkStructureType sType;
--   >     const void*                      pNext;
--   >     uint32_t                                          objectCount;
--   >     const VkObjectEntryTypeNVX*       pObjectEntryTypes;
--   >     const uint32_t*                   pObjectEntryCounts;
--   >     const VkObjectEntryUsageFlagsNVX* pObjectEntryUsageFlags;
--   >     uint32_t maxUniformBuffersPerDescriptor;
--   >     uint32_t maxStorageBuffersPerDescriptor;
--   >     uint32_t maxStorageImagesPerDescriptor;
--   >     uint32_t maxSampledImagesPerDescriptor;
--   >     uint32_t maxPipelineLayouts;
--   > } VkObjectTableCreateInfoNVX;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/VkObjectTableCreateInfoNVX.html VkObjectTableCreateInfoNVX registry at www.khronos.org>
data VkObjectTableCreateInfoNVX = VkObjectTableCreateInfoNVX## ByteArray##

instance Eq VkObjectTableCreateInfoNVX where
        (VkObjectTableCreateInfoNVX## a) == (VkObjectTableCreateInfoNVX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkObjectTableCreateInfoNVX where
        (VkObjectTableCreateInfoNVX## a) `compare`
          (VkObjectTableCreateInfoNVX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkObjectTableCreateInfoNVX where
        sizeOf ~_ = #{size VkObjectTableCreateInfoNVX}

        {-# INLINE sizeOf #-}
        alignment ~_ = #{alignment VkObjectTableCreateInfoNVX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkObjectTableCreateInfoNVX),
            I## a <- alignment (undefined :: VkObjectTableCreateInfoNVX) =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkObjectTableCreateInfoNVX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkObjectTableCreateInfoNVX## ba)
          | I## n <- sizeOf (undefined :: VkObjectTableCreateInfoNVX) =
            IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkObjectTableCreateInfoNVX where
        type StructFields VkObjectTableCreateInfoNVX =
             '["sType", "pNext", "objectCount", "pObjectEntryTypes", -- ' closing tick for hsc2hs
               "pObjectEntryCounts", "pObjectEntryUsageFlags",
               "maxUniformBuffersPerDescriptor", "maxStorageBuffersPerDescriptor",
               "maxStorageImagesPerDescriptor", "maxSampledImagesPerDescriptor",
               "maxPipelineLayouts"]

        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkObjectTableCreateInfoNVX),
            I## a <- alignment (undefined :: VkObjectTableCreateInfoNVX) =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkObjectTableCreateInfoNVX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkObjectTableCreateInfoNVX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr = fromForeignPtr## VkObjectTableCreateInfoNVX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkObjectTableCreateInfoNVX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkObjectTableCreateInfoNVX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkObjectTableCreateInfoNVX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-} HasVkSType VkObjectTableCreateInfoNVX
         where
        type VkSTypeMType VkObjectTableCreateInfoNVX = VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableCreateInfoNVX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkObjectTableCreateInfoNVX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkObjectTableCreateInfoNVX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkObjectTableCreateInfoNVX, sType}

instance {-# OVERLAPPING #-}
         HasField "sType" VkObjectTableCreateInfoNVX where
        type FieldType "sType" VkObjectTableCreateInfoNVX = VkStructureType
        type FieldOptional "sType" VkObjectTableCreateInfoNVX = 'False -- ' closing tick for hsc2hs
        type FieldOffset "sType" VkObjectTableCreateInfoNVX =
             #{offset VkObjectTableCreateInfoNVX, sType}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableCreateInfoNVX, sType}

instance CanReadField "sType" VkObjectTableCreateInfoNVX where
        {-# INLINE getField #-}
        getField = vkSType

        {-# INLINE readField #-}
        readField = readVkSType

instance CanWriteField "sType" VkObjectTableCreateInfoNVX where
        {-# INLINE writeField #-}
        writeField = writeVkSType

instance {-# OVERLAPPING #-} HasVkPNext VkObjectTableCreateInfoNVX
         where
        type VkPNextMType VkObjectTableCreateInfoNVX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableCreateInfoNVX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkObjectTableCreateInfoNVX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkObjectTableCreateInfoNVX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkObjectTableCreateInfoNVX, pNext}

instance {-# OVERLAPPING #-}
         HasField "pNext" VkObjectTableCreateInfoNVX where
        type FieldType "pNext" VkObjectTableCreateInfoNVX = Ptr Void
        type FieldOptional "pNext" VkObjectTableCreateInfoNVX = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pNext" VkObjectTableCreateInfoNVX =
             #{offset VkObjectTableCreateInfoNVX, pNext}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableCreateInfoNVX, pNext}

instance CanReadField "pNext" VkObjectTableCreateInfoNVX where
        {-# INLINE getField #-}
        getField = vkPNext

        {-# INLINE readField #-}
        readField = readVkPNext

instance CanWriteField "pNext" VkObjectTableCreateInfoNVX where
        {-# INLINE writeField #-}
        writeField = writeVkPNext

instance {-# OVERLAPPING #-}
         HasVkObjectCount VkObjectTableCreateInfoNVX where
        type VkObjectCountMType VkObjectTableCreateInfoNVX = Word32

        {-# NOINLINE vkObjectCount #-}
        vkObjectCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableCreateInfoNVX, objectCount})

        {-# INLINE vkObjectCountByteOffset #-}
        vkObjectCountByteOffset ~_
          = #{offset VkObjectTableCreateInfoNVX, objectCount}

        {-# INLINE readVkObjectCount #-}
        readVkObjectCount p
          = peekByteOff p #{offset VkObjectTableCreateInfoNVX, objectCount}

        {-# INLINE writeVkObjectCount #-}
        writeVkObjectCount p
          = pokeByteOff p #{offset VkObjectTableCreateInfoNVX, objectCount}

instance {-# OVERLAPPING #-}
         HasField "objectCount" VkObjectTableCreateInfoNVX where
        type FieldType "objectCount" VkObjectTableCreateInfoNVX = Word32
        type FieldOptional "objectCount" VkObjectTableCreateInfoNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "objectCount" VkObjectTableCreateInfoNVX =
             #{offset VkObjectTableCreateInfoNVX, objectCount}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableCreateInfoNVX, objectCount}

instance CanReadField "objectCount" VkObjectTableCreateInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkObjectCount

        {-# INLINE readField #-}
        readField = readVkObjectCount

instance CanWriteField "objectCount" VkObjectTableCreateInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkObjectCount

instance {-# OVERLAPPING #-}
         HasVkPObjectEntryTypes VkObjectTableCreateInfoNVX where
        type VkPObjectEntryTypesMType VkObjectTableCreateInfoNVX =
             Ptr VkObjectEntryTypeNVX

        {-# NOINLINE vkPObjectEntryTypes #-}
        vkPObjectEntryTypes x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableCreateInfoNVX, pObjectEntryTypes})

        {-# INLINE vkPObjectEntryTypesByteOffset #-}
        vkPObjectEntryTypesByteOffset ~_
          = #{offset VkObjectTableCreateInfoNVX, pObjectEntryTypes}

        {-# INLINE readVkPObjectEntryTypes #-}
        readVkPObjectEntryTypes p
          = peekByteOff p #{offset VkObjectTableCreateInfoNVX, pObjectEntryTypes}

        {-# INLINE writeVkPObjectEntryTypes #-}
        writeVkPObjectEntryTypes p
          = pokeByteOff p #{offset VkObjectTableCreateInfoNVX, pObjectEntryTypes}

instance {-# OVERLAPPING #-}
         HasField "pObjectEntryTypes" VkObjectTableCreateInfoNVX where
        type FieldType "pObjectEntryTypes" VkObjectTableCreateInfoNVX =
             Ptr VkObjectEntryTypeNVX
        type FieldOptional "pObjectEntryTypes" VkObjectTableCreateInfoNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "pObjectEntryTypes" VkObjectTableCreateInfoNVX =
             #{offset VkObjectTableCreateInfoNVX, pObjectEntryTypes}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableCreateInfoNVX, pObjectEntryTypes}

instance CanReadField "pObjectEntryTypes"
           VkObjectTableCreateInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkPObjectEntryTypes

        {-# INLINE readField #-}
        readField = readVkPObjectEntryTypes

instance CanWriteField "pObjectEntryTypes"
           VkObjectTableCreateInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkPObjectEntryTypes

instance {-# OVERLAPPING #-}
         HasVkPObjectEntryCounts VkObjectTableCreateInfoNVX where
        type VkPObjectEntryCountsMType VkObjectTableCreateInfoNVX =
             Ptr Word32

        {-# NOINLINE vkPObjectEntryCounts #-}
        vkPObjectEntryCounts x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableCreateInfoNVX, pObjectEntryCounts})

        {-# INLINE vkPObjectEntryCountsByteOffset #-}
        vkPObjectEntryCountsByteOffset ~_
          = #{offset VkObjectTableCreateInfoNVX, pObjectEntryCounts}

        {-# INLINE readVkPObjectEntryCounts #-}
        readVkPObjectEntryCounts p
          = peekByteOff p #{offset VkObjectTableCreateInfoNVX, pObjectEntryCounts}

        {-# INLINE writeVkPObjectEntryCounts #-}
        writeVkPObjectEntryCounts p
          = pokeByteOff p #{offset VkObjectTableCreateInfoNVX, pObjectEntryCounts}

instance {-# OVERLAPPING #-}
         HasField "pObjectEntryCounts" VkObjectTableCreateInfoNVX where
        type FieldType "pObjectEntryCounts" VkObjectTableCreateInfoNVX =
             Ptr Word32
        type FieldOptional "pObjectEntryCounts" VkObjectTableCreateInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pObjectEntryCounts" VkObjectTableCreateInfoNVX =
             #{offset VkObjectTableCreateInfoNVX, pObjectEntryCounts}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableCreateInfoNVX, pObjectEntryCounts}

instance CanReadField "pObjectEntryCounts"
           VkObjectTableCreateInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkPObjectEntryCounts

        {-# INLINE readField #-}
        readField = readVkPObjectEntryCounts

instance CanWriteField "pObjectEntryCounts"
           VkObjectTableCreateInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkPObjectEntryCounts

instance {-# OVERLAPPING #-}
         HasVkPObjectEntryUsageFlags VkObjectTableCreateInfoNVX where
        type VkPObjectEntryUsageFlagsMType VkObjectTableCreateInfoNVX =
             Ptr VkObjectEntryUsageFlagsNVX

        {-# NOINLINE vkPObjectEntryUsageFlags #-}
        vkPObjectEntryUsageFlags x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableCreateInfoNVX, pObjectEntryUsageFlags})

        {-# INLINE vkPObjectEntryUsageFlagsByteOffset #-}
        vkPObjectEntryUsageFlagsByteOffset ~_
          = #{offset VkObjectTableCreateInfoNVX, pObjectEntryUsageFlags}

        {-# INLINE readVkPObjectEntryUsageFlags #-}
        readVkPObjectEntryUsageFlags p
          = peekByteOff p #{offset VkObjectTableCreateInfoNVX, pObjectEntryUsageFlags}

        {-# INLINE writeVkPObjectEntryUsageFlags #-}
        writeVkPObjectEntryUsageFlags p
          = pokeByteOff p #{offset VkObjectTableCreateInfoNVX, pObjectEntryUsageFlags}

instance {-# OVERLAPPING #-}
         HasField "pObjectEntryUsageFlags" VkObjectTableCreateInfoNVX where
        type FieldType "pObjectEntryUsageFlags" VkObjectTableCreateInfoNVX
             = Ptr VkObjectEntryUsageFlagsNVX
        type FieldOptional "pObjectEntryUsageFlags"
               VkObjectTableCreateInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pObjectEntryUsageFlags"
               VkObjectTableCreateInfoNVX
             =
             #{offset VkObjectTableCreateInfoNVX, pObjectEntryUsageFlags}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableCreateInfoNVX, pObjectEntryUsageFlags}

instance CanReadField "pObjectEntryUsageFlags"
           VkObjectTableCreateInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkPObjectEntryUsageFlags

        {-# INLINE readField #-}
        readField = readVkPObjectEntryUsageFlags

instance CanWriteField "pObjectEntryUsageFlags"
           VkObjectTableCreateInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkPObjectEntryUsageFlags

instance {-# OVERLAPPING #-}
         HasVkMaxUniformBuffersPerDescriptor VkObjectTableCreateInfoNVX
         where
        type VkMaxUniformBuffersPerDescriptorMType
               VkObjectTableCreateInfoNVX
             = Word32

        {-# NOINLINE vkMaxUniformBuffersPerDescriptor #-}
        vkMaxUniformBuffersPerDescriptor x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableCreateInfoNVX, maxUniformBuffersPerDescriptor})

        {-# INLINE vkMaxUniformBuffersPerDescriptorByteOffset #-}
        vkMaxUniformBuffersPerDescriptorByteOffset ~_
          = #{offset VkObjectTableCreateInfoNVX, maxUniformBuffersPerDescriptor}

        {-# INLINE readVkMaxUniformBuffersPerDescriptor #-}
        readVkMaxUniformBuffersPerDescriptor p
          = peekByteOff p #{offset VkObjectTableCreateInfoNVX, maxUniformBuffersPerDescriptor}

        {-# INLINE writeVkMaxUniformBuffersPerDescriptor #-}
        writeVkMaxUniformBuffersPerDescriptor p
          = pokeByteOff p #{offset VkObjectTableCreateInfoNVX, maxUniformBuffersPerDescriptor}

instance {-# OVERLAPPING #-}
         HasField "maxUniformBuffersPerDescriptor"
           VkObjectTableCreateInfoNVX
         where
        type FieldType "maxUniformBuffersPerDescriptor"
               VkObjectTableCreateInfoNVX
             = Word32
        type FieldOptional "maxUniformBuffersPerDescriptor"
               VkObjectTableCreateInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "maxUniformBuffersPerDescriptor"
               VkObjectTableCreateInfoNVX
             =
             #{offset VkObjectTableCreateInfoNVX, maxUniformBuffersPerDescriptor}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableCreateInfoNVX, maxUniformBuffersPerDescriptor}

instance CanReadField "maxUniformBuffersPerDescriptor"
           VkObjectTableCreateInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkMaxUniformBuffersPerDescriptor

        {-# INLINE readField #-}
        readField = readVkMaxUniformBuffersPerDescriptor

instance CanWriteField "maxUniformBuffersPerDescriptor"
           VkObjectTableCreateInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkMaxUniformBuffersPerDescriptor

instance {-# OVERLAPPING #-}
         HasVkMaxStorageBuffersPerDescriptor VkObjectTableCreateInfoNVX
         where
        type VkMaxStorageBuffersPerDescriptorMType
               VkObjectTableCreateInfoNVX
             = Word32

        {-# NOINLINE vkMaxStorageBuffersPerDescriptor #-}
        vkMaxStorageBuffersPerDescriptor x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableCreateInfoNVX, maxStorageBuffersPerDescriptor})

        {-# INLINE vkMaxStorageBuffersPerDescriptorByteOffset #-}
        vkMaxStorageBuffersPerDescriptorByteOffset ~_
          = #{offset VkObjectTableCreateInfoNVX, maxStorageBuffersPerDescriptor}

        {-# INLINE readVkMaxStorageBuffersPerDescriptor #-}
        readVkMaxStorageBuffersPerDescriptor p
          = peekByteOff p #{offset VkObjectTableCreateInfoNVX, maxStorageBuffersPerDescriptor}

        {-# INLINE writeVkMaxStorageBuffersPerDescriptor #-}
        writeVkMaxStorageBuffersPerDescriptor p
          = pokeByteOff p #{offset VkObjectTableCreateInfoNVX, maxStorageBuffersPerDescriptor}

instance {-# OVERLAPPING #-}
         HasField "maxStorageBuffersPerDescriptor"
           VkObjectTableCreateInfoNVX
         where
        type FieldType "maxStorageBuffersPerDescriptor"
               VkObjectTableCreateInfoNVX
             = Word32
        type FieldOptional "maxStorageBuffersPerDescriptor"
               VkObjectTableCreateInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "maxStorageBuffersPerDescriptor"
               VkObjectTableCreateInfoNVX
             =
             #{offset VkObjectTableCreateInfoNVX, maxStorageBuffersPerDescriptor}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableCreateInfoNVX, maxStorageBuffersPerDescriptor}

instance CanReadField "maxStorageBuffersPerDescriptor"
           VkObjectTableCreateInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkMaxStorageBuffersPerDescriptor

        {-# INLINE readField #-}
        readField = readVkMaxStorageBuffersPerDescriptor

instance CanWriteField "maxStorageBuffersPerDescriptor"
           VkObjectTableCreateInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkMaxStorageBuffersPerDescriptor

instance {-# OVERLAPPING #-}
         HasVkMaxStorageImagesPerDescriptor VkObjectTableCreateInfoNVX where
        type VkMaxStorageImagesPerDescriptorMType
               VkObjectTableCreateInfoNVX
             = Word32

        {-# NOINLINE vkMaxStorageImagesPerDescriptor #-}
        vkMaxStorageImagesPerDescriptor x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableCreateInfoNVX, maxStorageImagesPerDescriptor})

        {-# INLINE vkMaxStorageImagesPerDescriptorByteOffset #-}
        vkMaxStorageImagesPerDescriptorByteOffset ~_
          = #{offset VkObjectTableCreateInfoNVX, maxStorageImagesPerDescriptor}

        {-# INLINE readVkMaxStorageImagesPerDescriptor #-}
        readVkMaxStorageImagesPerDescriptor p
          = peekByteOff p #{offset VkObjectTableCreateInfoNVX, maxStorageImagesPerDescriptor}

        {-# INLINE writeVkMaxStorageImagesPerDescriptor #-}
        writeVkMaxStorageImagesPerDescriptor p
          = pokeByteOff p #{offset VkObjectTableCreateInfoNVX, maxStorageImagesPerDescriptor}

instance {-# OVERLAPPING #-}
         HasField "maxStorageImagesPerDescriptor" VkObjectTableCreateInfoNVX
         where
        type FieldType "maxStorageImagesPerDescriptor"
               VkObjectTableCreateInfoNVX
             = Word32
        type FieldOptional "maxStorageImagesPerDescriptor"
               VkObjectTableCreateInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "maxStorageImagesPerDescriptor"
               VkObjectTableCreateInfoNVX
             =
             #{offset VkObjectTableCreateInfoNVX, maxStorageImagesPerDescriptor}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableCreateInfoNVX, maxStorageImagesPerDescriptor}

instance CanReadField "maxStorageImagesPerDescriptor"
           VkObjectTableCreateInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkMaxStorageImagesPerDescriptor

        {-# INLINE readField #-}
        readField = readVkMaxStorageImagesPerDescriptor

instance CanWriteField "maxStorageImagesPerDescriptor"
           VkObjectTableCreateInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkMaxStorageImagesPerDescriptor

instance {-# OVERLAPPING #-}
         HasVkMaxSampledImagesPerDescriptor VkObjectTableCreateInfoNVX where
        type VkMaxSampledImagesPerDescriptorMType
               VkObjectTableCreateInfoNVX
             = Word32

        {-# NOINLINE vkMaxSampledImagesPerDescriptor #-}
        vkMaxSampledImagesPerDescriptor x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableCreateInfoNVX, maxSampledImagesPerDescriptor})

        {-# INLINE vkMaxSampledImagesPerDescriptorByteOffset #-}
        vkMaxSampledImagesPerDescriptorByteOffset ~_
          = #{offset VkObjectTableCreateInfoNVX, maxSampledImagesPerDescriptor}

        {-# INLINE readVkMaxSampledImagesPerDescriptor #-}
        readVkMaxSampledImagesPerDescriptor p
          = peekByteOff p #{offset VkObjectTableCreateInfoNVX, maxSampledImagesPerDescriptor}

        {-# INLINE writeVkMaxSampledImagesPerDescriptor #-}
        writeVkMaxSampledImagesPerDescriptor p
          = pokeByteOff p #{offset VkObjectTableCreateInfoNVX, maxSampledImagesPerDescriptor}

instance {-# OVERLAPPING #-}
         HasField "maxSampledImagesPerDescriptor" VkObjectTableCreateInfoNVX
         where
        type FieldType "maxSampledImagesPerDescriptor"
               VkObjectTableCreateInfoNVX
             = Word32
        type FieldOptional "maxSampledImagesPerDescriptor"
               VkObjectTableCreateInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "maxSampledImagesPerDescriptor"
               VkObjectTableCreateInfoNVX
             =
             #{offset VkObjectTableCreateInfoNVX, maxSampledImagesPerDescriptor}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableCreateInfoNVX, maxSampledImagesPerDescriptor}

instance CanReadField "maxSampledImagesPerDescriptor"
           VkObjectTableCreateInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkMaxSampledImagesPerDescriptor

        {-# INLINE readField #-}
        readField = readVkMaxSampledImagesPerDescriptor

instance CanWriteField "maxSampledImagesPerDescriptor"
           VkObjectTableCreateInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkMaxSampledImagesPerDescriptor

instance {-# OVERLAPPING #-}
         HasVkMaxPipelineLayouts VkObjectTableCreateInfoNVX where
        type VkMaxPipelineLayoutsMType VkObjectTableCreateInfoNVX = Word32

        {-# NOINLINE vkMaxPipelineLayouts #-}
        vkMaxPipelineLayouts x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableCreateInfoNVX, maxPipelineLayouts})

        {-# INLINE vkMaxPipelineLayoutsByteOffset #-}
        vkMaxPipelineLayoutsByteOffset ~_
          = #{offset VkObjectTableCreateInfoNVX, maxPipelineLayouts}

        {-# INLINE readVkMaxPipelineLayouts #-}
        readVkMaxPipelineLayouts p
          = peekByteOff p #{offset VkObjectTableCreateInfoNVX, maxPipelineLayouts}

        {-# INLINE writeVkMaxPipelineLayouts #-}
        writeVkMaxPipelineLayouts p
          = pokeByteOff p #{offset VkObjectTableCreateInfoNVX, maxPipelineLayouts}

instance {-# OVERLAPPING #-}
         HasField "maxPipelineLayouts" VkObjectTableCreateInfoNVX where
        type FieldType "maxPipelineLayouts" VkObjectTableCreateInfoNVX =
             Word32
        type FieldOptional "maxPipelineLayouts" VkObjectTableCreateInfoNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "maxPipelineLayouts" VkObjectTableCreateInfoNVX =
             #{offset VkObjectTableCreateInfoNVX, maxPipelineLayouts}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableCreateInfoNVX, maxPipelineLayouts}

instance CanReadField "maxPipelineLayouts"
           VkObjectTableCreateInfoNVX
         where
        {-# INLINE getField #-}
        getField = vkMaxPipelineLayouts

        {-# INLINE readField #-}
        readField = readVkMaxPipelineLayouts

instance CanWriteField "maxPipelineLayouts"
           VkObjectTableCreateInfoNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkMaxPipelineLayouts

instance Show VkObjectTableCreateInfoNVX where
        showsPrec d x
          = showString "VkObjectTableCreateInfoNVX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkObjectCount = " .
                            showsPrec d (vkObjectCount x) .
                              showString ", " .
                                showString "vkPObjectEntryTypes = " .
                                  showsPrec d (vkPObjectEntryTypes x) .
                                    showString ", " .
                                      showString "vkPObjectEntryCounts = " .
                                        showsPrec d (vkPObjectEntryCounts x) .
                                          showString ", " .
                                            showString "vkPObjectEntryUsageFlags = " .
                                              showsPrec d (vkPObjectEntryUsageFlags x) .
                                                showString ", " .
                                                  showString "vkMaxUniformBuffersPerDescriptor = " .
                                                    showsPrec d (vkMaxUniformBuffersPerDescriptor x)
                                                      .
                                                      showString ", " .
                                                        showString
                                                          "vkMaxStorageBuffersPerDescriptor = "
                                                          .
                                                          showsPrec d
                                                            (vkMaxStorageBuffersPerDescriptor x)
                                                            .
                                                            showString ", " .
                                                              showString
                                                                "vkMaxStorageImagesPerDescriptor = "
                                                                .
                                                                showsPrec d
                                                                  (vkMaxStorageImagesPerDescriptor
                                                                     x)
                                                                  .
                                                                  showString ", " .
                                                                    showString
                                                                      "vkMaxSampledImagesPerDescriptor = "
                                                                      .
                                                                      showsPrec d
                                                                        (vkMaxSampledImagesPerDescriptor
                                                                           x)
                                                                        .
                                                                        showString ", " .
                                                                          showString
                                                                            "vkMaxPipelineLayouts = "
                                                                            .
                                                                            showsPrec d
                                                                              (vkMaxPipelineLayouts
                                                                                 x)
                                                                              . showChar '}'

-- | > typedef struct VkObjectTableEntryNVX {
--   >     VkObjectEntryTypeNVX         type;
--   >     VkObjectEntryUsageFlagsNVX   flags;
--   > } VkObjectTableEntryNVX;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/VkObjectTableEntryNVX.html VkObjectTableEntryNVX registry at www.khronos.org>
data VkObjectTableEntryNVX = VkObjectTableEntryNVX## ByteArray##

instance Eq VkObjectTableEntryNVX where
        (VkObjectTableEntryNVX## a) == (VkObjectTableEntryNVX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkObjectTableEntryNVX where
        (VkObjectTableEntryNVX## a) `compare` (VkObjectTableEntryNVX## b)
          = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkObjectTableEntryNVX where
        sizeOf ~_ = #{size VkObjectTableEntryNVX}

        {-# INLINE sizeOf #-}
        alignment ~_ = #{alignment VkObjectTableEntryNVX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkObjectTableEntryNVX),
            I## a <- alignment (undefined :: VkObjectTableEntryNVX) =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkObjectTableEntryNVX## ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkObjectTableEntryNVX## ba)
          | I## n <- sizeOf (undefined :: VkObjectTableEntryNVX) =
            IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkObjectTableEntryNVX where
        type StructFields VkObjectTableEntryNVX = '["type", "flags"] -- ' closing tick for hsc2hs

        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkObjectTableEntryNVX),
            I## a <- alignment (undefined :: VkObjectTableEntryNVX) =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkObjectTableEntryNVX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkObjectTableEntryNVX## ba) = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr = fromForeignPtr## VkObjectTableEntryNVX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkObjectTableEntryNVX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkObjectTableEntryNVX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkObjectTableEntryNVX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-} HasVkType VkObjectTableEntryNVX where
        type VkTypeMType VkObjectTableEntryNVX = VkObjectEntryTypeNVX

        {-# NOINLINE vkType #-}
        vkType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableEntryNVX, type})

        {-# INLINE vkTypeByteOffset #-}
        vkTypeByteOffset ~_
          = #{offset VkObjectTableEntryNVX, type}

        {-# INLINE readVkType #-}
        readVkType p
          = peekByteOff p #{offset VkObjectTableEntryNVX, type}

        {-# INLINE writeVkType #-}
        writeVkType p
          = pokeByteOff p #{offset VkObjectTableEntryNVX, type}

instance {-# OVERLAPPING #-} HasField "type" VkObjectTableEntryNVX
         where
        type FieldType "type" VkObjectTableEntryNVX = VkObjectEntryTypeNVX
        type FieldOptional "type" VkObjectTableEntryNVX = 'False -- ' closing tick for hsc2hs
        type FieldOffset "type" VkObjectTableEntryNVX =
             #{offset VkObjectTableEntryNVX, type}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset = #{offset VkObjectTableEntryNVX, type}

instance CanReadField "type" VkObjectTableEntryNVX where
        {-# INLINE getField #-}
        getField = vkType

        {-# INLINE readField #-}
        readField = readVkType

instance CanWriteField "type" VkObjectTableEntryNVX where
        {-# INLINE writeField #-}
        writeField = writeVkType

instance {-# OVERLAPPING #-} HasVkFlags VkObjectTableEntryNVX where
        type VkFlagsMType VkObjectTableEntryNVX =
             VkObjectEntryUsageFlagsNVX

        {-# NOINLINE vkFlags #-}
        vkFlags x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableEntryNVX, flags})

        {-# INLINE vkFlagsByteOffset #-}
        vkFlagsByteOffset ~_
          = #{offset VkObjectTableEntryNVX, flags}

        {-# INLINE readVkFlags #-}
        readVkFlags p
          = peekByteOff p #{offset VkObjectTableEntryNVX, flags}

        {-# INLINE writeVkFlags #-}
        writeVkFlags p
          = pokeByteOff p #{offset VkObjectTableEntryNVX, flags}

instance {-# OVERLAPPING #-} HasField "flags" VkObjectTableEntryNVX
         where
        type FieldType "flags" VkObjectTableEntryNVX =
             VkObjectEntryUsageFlagsNVX
        type FieldOptional "flags" VkObjectTableEntryNVX = 'False -- ' closing tick for hsc2hs
        type FieldOffset "flags" VkObjectTableEntryNVX =
             #{offset VkObjectTableEntryNVX, flags}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset = #{offset VkObjectTableEntryNVX, flags}

instance CanReadField "flags" VkObjectTableEntryNVX where
        {-# INLINE getField #-}
        getField = vkFlags

        {-# INLINE readField #-}
        readField = readVkFlags

instance CanWriteField "flags" VkObjectTableEntryNVX where
        {-# INLINE writeField #-}
        writeField = writeVkFlags

instance Show VkObjectTableEntryNVX where
        showsPrec d x
          = showString "VkObjectTableEntryNVX {" .
              showString "vkType = " .
                showsPrec d (vkType x) .
                  showString ", " .
                    showString "vkFlags = " . showsPrec d (vkFlags x) . showChar '}'

-- | > typedef struct VkObjectTablePipelineEntryNVX {
--   >     VkObjectEntryTypeNVX         type;
--   >     VkObjectEntryUsageFlagsNVX   flags;
--   >     VkPipeline                   pipeline;
--   > } VkObjectTablePipelineEntryNVX;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/VkObjectTablePipelineEntryNVX.html VkObjectTablePipelineEntryNVX registry at www.khronos.org>
data VkObjectTablePipelineEntryNVX = VkObjectTablePipelineEntryNVX## ByteArray##

instance Eq VkObjectTablePipelineEntryNVX where
        (VkObjectTablePipelineEntryNVX## a) ==
          (VkObjectTablePipelineEntryNVX## b) = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkObjectTablePipelineEntryNVX where
        (VkObjectTablePipelineEntryNVX## a) `compare`
          (VkObjectTablePipelineEntryNVX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkObjectTablePipelineEntryNVX where
        sizeOf ~_ = #{size VkObjectTablePipelineEntryNVX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkObjectTablePipelineEntryNVX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkObjectTablePipelineEntryNVX),
            I## a <- alignment (undefined :: VkObjectTablePipelineEntryNVX) =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkObjectTablePipelineEntryNVX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkObjectTablePipelineEntryNVX## ba)
          | I## n <- sizeOf (undefined :: VkObjectTablePipelineEntryNVX) =
            IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkObjectTablePipelineEntryNVX where
        type StructFields VkObjectTablePipelineEntryNVX =
             '["type", "flags", "pipeline"] -- ' closing tick for hsc2hs

        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkObjectTablePipelineEntryNVX),
            I## a <- alignment (undefined :: VkObjectTablePipelineEntryNVX) =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkObjectTablePipelineEntryNVX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkObjectTablePipelineEntryNVX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr = fromForeignPtr## VkObjectTablePipelineEntryNVX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkObjectTablePipelineEntryNVX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkObjectTablePipelineEntryNVX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkObjectTablePipelineEntryNVX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkType VkObjectTablePipelineEntryNVX where
        type VkTypeMType VkObjectTablePipelineEntryNVX =
             VkObjectEntryTypeNVX

        {-# NOINLINE vkType #-}
        vkType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTablePipelineEntryNVX, type})

        {-# INLINE vkTypeByteOffset #-}
        vkTypeByteOffset ~_
          = #{offset VkObjectTablePipelineEntryNVX, type}

        {-# INLINE readVkType #-}
        readVkType p
          = peekByteOff p #{offset VkObjectTablePipelineEntryNVX, type}

        {-# INLINE writeVkType #-}
        writeVkType p
          = pokeByteOff p #{offset VkObjectTablePipelineEntryNVX, type}

instance {-# OVERLAPPING #-}
         HasField "type" VkObjectTablePipelineEntryNVX where
        type FieldType "type" VkObjectTablePipelineEntryNVX =
             VkObjectEntryTypeNVX
        type FieldOptional "type" VkObjectTablePipelineEntryNVX = 'False -- ' closing tick for hsc2hs
        type FieldOffset "type" VkObjectTablePipelineEntryNVX =
             #{offset VkObjectTablePipelineEntryNVX, type}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTablePipelineEntryNVX, type}

instance CanReadField "type" VkObjectTablePipelineEntryNVX where
        {-# INLINE getField #-}
        getField = vkType

        {-# INLINE readField #-}
        readField = readVkType

instance CanWriteField "type" VkObjectTablePipelineEntryNVX where
        {-# INLINE writeField #-}
        writeField = writeVkType

instance {-# OVERLAPPING #-}
         HasVkFlags VkObjectTablePipelineEntryNVX where
        type VkFlagsMType VkObjectTablePipelineEntryNVX =
             VkObjectEntryUsageFlagsNVX

        {-# NOINLINE vkFlags #-}
        vkFlags x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTablePipelineEntryNVX, flags})

        {-# INLINE vkFlagsByteOffset #-}
        vkFlagsByteOffset ~_
          = #{offset VkObjectTablePipelineEntryNVX, flags}

        {-# INLINE readVkFlags #-}
        readVkFlags p
          = peekByteOff p #{offset VkObjectTablePipelineEntryNVX, flags}

        {-# INLINE writeVkFlags #-}
        writeVkFlags p
          = pokeByteOff p #{offset VkObjectTablePipelineEntryNVX, flags}

instance {-# OVERLAPPING #-}
         HasField "flags" VkObjectTablePipelineEntryNVX where
        type FieldType "flags" VkObjectTablePipelineEntryNVX =
             VkObjectEntryUsageFlagsNVX
        type FieldOptional "flags" VkObjectTablePipelineEntryNVX = 'False -- ' closing tick for hsc2hs
        type FieldOffset "flags" VkObjectTablePipelineEntryNVX =
             #{offset VkObjectTablePipelineEntryNVX, flags}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTablePipelineEntryNVX, flags}

instance CanReadField "flags" VkObjectTablePipelineEntryNVX where
        {-# INLINE getField #-}
        getField = vkFlags

        {-# INLINE readField #-}
        readField = readVkFlags

instance CanWriteField "flags" VkObjectTablePipelineEntryNVX where
        {-# INLINE writeField #-}
        writeField = writeVkFlags

instance {-# OVERLAPPING #-}
         HasVkPipeline VkObjectTablePipelineEntryNVX where
        type VkPipelineMType VkObjectTablePipelineEntryNVX = VkPipeline

        {-# NOINLINE vkPipeline #-}
        vkPipeline x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTablePipelineEntryNVX, pipeline})

        {-# INLINE vkPipelineByteOffset #-}
        vkPipelineByteOffset ~_
          = #{offset VkObjectTablePipelineEntryNVX, pipeline}

        {-# INLINE readVkPipeline #-}
        readVkPipeline p
          = peekByteOff p #{offset VkObjectTablePipelineEntryNVX, pipeline}

        {-# INLINE writeVkPipeline #-}
        writeVkPipeline p
          = pokeByteOff p #{offset VkObjectTablePipelineEntryNVX, pipeline}

instance {-# OVERLAPPING #-}
         HasField "pipeline" VkObjectTablePipelineEntryNVX where
        type FieldType "pipeline" VkObjectTablePipelineEntryNVX =
             VkPipeline
        type FieldOptional "pipeline" VkObjectTablePipelineEntryNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "pipeline" VkObjectTablePipelineEntryNVX =
             #{offset VkObjectTablePipelineEntryNVX, pipeline}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTablePipelineEntryNVX, pipeline}

instance CanReadField "pipeline" VkObjectTablePipelineEntryNVX
         where
        {-# INLINE getField #-}
        getField = vkPipeline

        {-# INLINE readField #-}
        readField = readVkPipeline

instance CanWriteField "pipeline" VkObjectTablePipelineEntryNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkPipeline

instance Show VkObjectTablePipelineEntryNVX where
        showsPrec d x
          = showString "VkObjectTablePipelineEntryNVX {" .
              showString "vkType = " .
                showsPrec d (vkType x) .
                  showString ", " .
                    showString "vkFlags = " .
                      showsPrec d (vkFlags x) .
                        showString ", " .
                          showString "vkPipeline = " .
                            showsPrec d (vkPipeline x) . showChar '}'

-- | > typedef struct VkObjectTableDescriptorSetEntryNVX {
--   >     VkObjectEntryTypeNVX         type;
--   >     VkObjectEntryUsageFlagsNVX   flags;
--   >     VkPipelineLayout             pipelineLayout;
--   >     VkDescriptorSet              descriptorSet;
--   > } VkObjectTableDescriptorSetEntryNVX;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/VkObjectTableDescriptorSetEntryNVX.html VkObjectTableDescriptorSetEntryNVX registry at www.khronos.org>
data VkObjectTableDescriptorSetEntryNVX = VkObjectTableDescriptorSetEntryNVX## ByteArray##

instance Eq VkObjectTableDescriptorSetEntryNVX where
        (VkObjectTableDescriptorSetEntryNVX## a) ==
          (VkObjectTableDescriptorSetEntryNVX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkObjectTableDescriptorSetEntryNVX where
        (VkObjectTableDescriptorSetEntryNVX## a) `compare`
          (VkObjectTableDescriptorSetEntryNVX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkObjectTableDescriptorSetEntryNVX where
        sizeOf ~_ = #{size VkObjectTableDescriptorSetEntryNVX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkObjectTableDescriptorSetEntryNVX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkObjectTableDescriptorSetEntryNVX),
            I## a <- alignment (undefined :: VkObjectTableDescriptorSetEntryNVX)
            =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkObjectTableDescriptorSetEntryNVX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkObjectTableDescriptorSetEntryNVX## ba)
          | I## n <- sizeOf (undefined :: VkObjectTableDescriptorSetEntryNVX)
            = IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkObjectTableDescriptorSetEntryNVX where
        type StructFields VkObjectTableDescriptorSetEntryNVX =
             '["type", "flags", "pipelineLayout", "descriptorSet"] -- ' closing tick for hsc2hs

        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkObjectTableDescriptorSetEntryNVX),
            I## a <- alignment (undefined :: VkObjectTableDescriptorSetEntryNVX)
            =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkObjectTableDescriptorSetEntryNVX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkObjectTableDescriptorSetEntryNVX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr
          = fromForeignPtr## VkObjectTableDescriptorSetEntryNVX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkObjectTableDescriptorSetEntryNVX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkObjectTableDescriptorSetEntryNVX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkObjectTableDescriptorSetEntryNVX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkType VkObjectTableDescriptorSetEntryNVX where
        type VkTypeMType VkObjectTableDescriptorSetEntryNVX =
             VkObjectEntryTypeNVX

        {-# NOINLINE vkType #-}
        vkType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableDescriptorSetEntryNVX, type})

        {-# INLINE vkTypeByteOffset #-}
        vkTypeByteOffset ~_
          = #{offset VkObjectTableDescriptorSetEntryNVX, type}

        {-# INLINE readVkType #-}
        readVkType p
          = peekByteOff p #{offset VkObjectTableDescriptorSetEntryNVX, type}

        {-# INLINE writeVkType #-}
        writeVkType p
          = pokeByteOff p #{offset VkObjectTableDescriptorSetEntryNVX, type}

instance {-# OVERLAPPING #-}
         HasField "type" VkObjectTableDescriptorSetEntryNVX where
        type FieldType "type" VkObjectTableDescriptorSetEntryNVX =
             VkObjectEntryTypeNVX
        type FieldOptional "type" VkObjectTableDescriptorSetEntryNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "type" VkObjectTableDescriptorSetEntryNVX =
             #{offset VkObjectTableDescriptorSetEntryNVX, type}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableDescriptorSetEntryNVX, type}

instance CanReadField "type" VkObjectTableDescriptorSetEntryNVX
         where
        {-# INLINE getField #-}
        getField = vkType

        {-# INLINE readField #-}
        readField = readVkType

instance CanWriteField "type" VkObjectTableDescriptorSetEntryNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkType

instance {-# OVERLAPPING #-}
         HasVkFlags VkObjectTableDescriptorSetEntryNVX where
        type VkFlagsMType VkObjectTableDescriptorSetEntryNVX =
             VkObjectEntryUsageFlagsNVX

        {-# NOINLINE vkFlags #-}
        vkFlags x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableDescriptorSetEntryNVX, flags})

        {-# INLINE vkFlagsByteOffset #-}
        vkFlagsByteOffset ~_
          = #{offset VkObjectTableDescriptorSetEntryNVX, flags}

        {-# INLINE readVkFlags #-}
        readVkFlags p
          = peekByteOff p #{offset VkObjectTableDescriptorSetEntryNVX, flags}

        {-# INLINE writeVkFlags #-}
        writeVkFlags p
          = pokeByteOff p #{offset VkObjectTableDescriptorSetEntryNVX, flags}

instance {-# OVERLAPPING #-}
         HasField "flags" VkObjectTableDescriptorSetEntryNVX where
        type FieldType "flags" VkObjectTableDescriptorSetEntryNVX =
             VkObjectEntryUsageFlagsNVX
        type FieldOptional "flags" VkObjectTableDescriptorSetEntryNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "flags" VkObjectTableDescriptorSetEntryNVX =
             #{offset VkObjectTableDescriptorSetEntryNVX, flags}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableDescriptorSetEntryNVX, flags}

instance CanReadField "flags" VkObjectTableDescriptorSetEntryNVX
         where
        {-# INLINE getField #-}
        getField = vkFlags

        {-# INLINE readField #-}
        readField = readVkFlags

instance CanWriteField "flags" VkObjectTableDescriptorSetEntryNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkFlags

instance {-# OVERLAPPING #-}
         HasVkPipelineLayout VkObjectTableDescriptorSetEntryNVX where
        type VkPipelineLayoutMType VkObjectTableDescriptorSetEntryNVX =
             VkPipelineLayout

        {-# NOINLINE vkPipelineLayout #-}
        vkPipelineLayout x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableDescriptorSetEntryNVX, pipelineLayout})

        {-# INLINE vkPipelineLayoutByteOffset #-}
        vkPipelineLayoutByteOffset ~_
          = #{offset VkObjectTableDescriptorSetEntryNVX, pipelineLayout}

        {-# INLINE readVkPipelineLayout #-}
        readVkPipelineLayout p
          = peekByteOff p #{offset VkObjectTableDescriptorSetEntryNVX, pipelineLayout}

        {-# INLINE writeVkPipelineLayout #-}
        writeVkPipelineLayout p
          = pokeByteOff p #{offset VkObjectTableDescriptorSetEntryNVX, pipelineLayout}

instance {-# OVERLAPPING #-}
         HasField "pipelineLayout" VkObjectTableDescriptorSetEntryNVX where
        type FieldType "pipelineLayout" VkObjectTableDescriptorSetEntryNVX
             = VkPipelineLayout
        type FieldOptional "pipelineLayout"
               VkObjectTableDescriptorSetEntryNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pipelineLayout"
               VkObjectTableDescriptorSetEntryNVX
             =
             #{offset VkObjectTableDescriptorSetEntryNVX, pipelineLayout}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableDescriptorSetEntryNVX, pipelineLayout}

instance CanReadField "pipelineLayout"
           VkObjectTableDescriptorSetEntryNVX
         where
        {-# INLINE getField #-}
        getField = vkPipelineLayout

        {-# INLINE readField #-}
        readField = readVkPipelineLayout

instance CanWriteField "pipelineLayout"
           VkObjectTableDescriptorSetEntryNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkPipelineLayout

instance {-# OVERLAPPING #-}
         HasVkDescriptorSet VkObjectTableDescriptorSetEntryNVX where
        type VkDescriptorSetMType VkObjectTableDescriptorSetEntryNVX =
             VkDescriptorSet

        {-# NOINLINE vkDescriptorSet #-}
        vkDescriptorSet x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableDescriptorSetEntryNVX, descriptorSet})

        {-# INLINE vkDescriptorSetByteOffset #-}
        vkDescriptorSetByteOffset ~_
          = #{offset VkObjectTableDescriptorSetEntryNVX, descriptorSet}

        {-# INLINE readVkDescriptorSet #-}
        readVkDescriptorSet p
          = peekByteOff p #{offset VkObjectTableDescriptorSetEntryNVX, descriptorSet}

        {-# INLINE writeVkDescriptorSet #-}
        writeVkDescriptorSet p
          = pokeByteOff p #{offset VkObjectTableDescriptorSetEntryNVX, descriptorSet}

instance {-# OVERLAPPING #-}
         HasField "descriptorSet" VkObjectTableDescriptorSetEntryNVX where
        type FieldType "descriptorSet" VkObjectTableDescriptorSetEntryNVX =
             VkDescriptorSet
        type FieldOptional "descriptorSet"
               VkObjectTableDescriptorSetEntryNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "descriptorSet" VkObjectTableDescriptorSetEntryNVX
             =
             #{offset VkObjectTableDescriptorSetEntryNVX, descriptorSet}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableDescriptorSetEntryNVX, descriptorSet}

instance CanReadField "descriptorSet"
           VkObjectTableDescriptorSetEntryNVX
         where
        {-# INLINE getField #-}
        getField = vkDescriptorSet

        {-# INLINE readField #-}
        readField = readVkDescriptorSet

instance CanWriteField "descriptorSet"
           VkObjectTableDescriptorSetEntryNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkDescriptorSet

instance Show VkObjectTableDescriptorSetEntryNVX where
        showsPrec d x
          = showString "VkObjectTableDescriptorSetEntryNVX {" .
              showString "vkType = " .
                showsPrec d (vkType x) .
                  showString ", " .
                    showString "vkFlags = " .
                      showsPrec d (vkFlags x) .
                        showString ", " .
                          showString "vkPipelineLayout = " .
                            showsPrec d (vkPipelineLayout x) .
                              showString ", " .
                                showString "vkDescriptorSet = " .
                                  showsPrec d (vkDescriptorSet x) . showChar '}'

-- | > typedef struct VkObjectTableVertexBufferEntryNVX {
--   >     VkObjectEntryTypeNVX         type;
--   >     VkObjectEntryUsageFlagsNVX   flags;
--   >     VkBuffer                     buffer;
--   > } VkObjectTableVertexBufferEntryNVX;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/VkObjectTableVertexBufferEntryNVX.html VkObjectTableVertexBufferEntryNVX registry at www.khronos.org>
data VkObjectTableVertexBufferEntryNVX = VkObjectTableVertexBufferEntryNVX## ByteArray##

instance Eq VkObjectTableVertexBufferEntryNVX where
        (VkObjectTableVertexBufferEntryNVX## a) ==
          (VkObjectTableVertexBufferEntryNVX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkObjectTableVertexBufferEntryNVX where
        (VkObjectTableVertexBufferEntryNVX## a) `compare`
          (VkObjectTableVertexBufferEntryNVX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkObjectTableVertexBufferEntryNVX where
        sizeOf ~_ = #{size VkObjectTableVertexBufferEntryNVX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkObjectTableVertexBufferEntryNVX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkObjectTableVertexBufferEntryNVX),
            I## a <- alignment (undefined :: VkObjectTableVertexBufferEntryNVX)
            =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkObjectTableVertexBufferEntryNVX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkObjectTableVertexBufferEntryNVX## ba)
          | I## n <- sizeOf (undefined :: VkObjectTableVertexBufferEntryNVX) =
            IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkObjectTableVertexBufferEntryNVX where
        type StructFields VkObjectTableVertexBufferEntryNVX =
             '["type", "flags", "buffer"] -- ' closing tick for hsc2hs

        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkObjectTableVertexBufferEntryNVX),
            I## a <- alignment (undefined :: VkObjectTableVertexBufferEntryNVX)
            =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkObjectTableVertexBufferEntryNVX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkObjectTableVertexBufferEntryNVX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr = fromForeignPtr## VkObjectTableVertexBufferEntryNVX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkObjectTableVertexBufferEntryNVX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkObjectTableVertexBufferEntryNVX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkObjectTableVertexBufferEntryNVX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkType VkObjectTableVertexBufferEntryNVX where
        type VkTypeMType VkObjectTableVertexBufferEntryNVX =
             VkObjectEntryTypeNVX

        {-# NOINLINE vkType #-}
        vkType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableVertexBufferEntryNVX, type})

        {-# INLINE vkTypeByteOffset #-}
        vkTypeByteOffset ~_
          = #{offset VkObjectTableVertexBufferEntryNVX, type}

        {-# INLINE readVkType #-}
        readVkType p
          = peekByteOff p #{offset VkObjectTableVertexBufferEntryNVX, type}

        {-# INLINE writeVkType #-}
        writeVkType p
          = pokeByteOff p #{offset VkObjectTableVertexBufferEntryNVX, type}

instance {-# OVERLAPPING #-}
         HasField "type" VkObjectTableVertexBufferEntryNVX where
        type FieldType "type" VkObjectTableVertexBufferEntryNVX =
             VkObjectEntryTypeNVX
        type FieldOptional "type" VkObjectTableVertexBufferEntryNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "type" VkObjectTableVertexBufferEntryNVX =
             #{offset VkObjectTableVertexBufferEntryNVX, type}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableVertexBufferEntryNVX, type}

instance CanReadField "type" VkObjectTableVertexBufferEntryNVX
         where
        {-# INLINE getField #-}
        getField = vkType

        {-# INLINE readField #-}
        readField = readVkType

instance CanWriteField "type" VkObjectTableVertexBufferEntryNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkType

instance {-# OVERLAPPING #-}
         HasVkFlags VkObjectTableVertexBufferEntryNVX where
        type VkFlagsMType VkObjectTableVertexBufferEntryNVX =
             VkObjectEntryUsageFlagsNVX

        {-# NOINLINE vkFlags #-}
        vkFlags x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableVertexBufferEntryNVX, flags})

        {-# INLINE vkFlagsByteOffset #-}
        vkFlagsByteOffset ~_
          = #{offset VkObjectTableVertexBufferEntryNVX, flags}

        {-# INLINE readVkFlags #-}
        readVkFlags p
          = peekByteOff p #{offset VkObjectTableVertexBufferEntryNVX, flags}

        {-# INLINE writeVkFlags #-}
        writeVkFlags p
          = pokeByteOff p #{offset VkObjectTableVertexBufferEntryNVX, flags}

instance {-# OVERLAPPING #-}
         HasField "flags" VkObjectTableVertexBufferEntryNVX where
        type FieldType "flags" VkObjectTableVertexBufferEntryNVX =
             VkObjectEntryUsageFlagsNVX
        type FieldOptional "flags" VkObjectTableVertexBufferEntryNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "flags" VkObjectTableVertexBufferEntryNVX =
             #{offset VkObjectTableVertexBufferEntryNVX, flags}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableVertexBufferEntryNVX, flags}

instance CanReadField "flags" VkObjectTableVertexBufferEntryNVX
         where
        {-# INLINE getField #-}
        getField = vkFlags

        {-# INLINE readField #-}
        readField = readVkFlags

instance CanWriteField "flags" VkObjectTableVertexBufferEntryNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkFlags

instance {-# OVERLAPPING #-}
         HasVkBuffer VkObjectTableVertexBufferEntryNVX where
        type VkBufferMType VkObjectTableVertexBufferEntryNVX = VkBuffer

        {-# NOINLINE vkBuffer #-}
        vkBuffer x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableVertexBufferEntryNVX, buffer})

        {-# INLINE vkBufferByteOffset #-}
        vkBufferByteOffset ~_
          = #{offset VkObjectTableVertexBufferEntryNVX, buffer}

        {-# INLINE readVkBuffer #-}
        readVkBuffer p
          = peekByteOff p #{offset VkObjectTableVertexBufferEntryNVX, buffer}

        {-# INLINE writeVkBuffer #-}
        writeVkBuffer p
          = pokeByteOff p #{offset VkObjectTableVertexBufferEntryNVX, buffer}

instance {-# OVERLAPPING #-}
         HasField "buffer" VkObjectTableVertexBufferEntryNVX where
        type FieldType "buffer" VkObjectTableVertexBufferEntryNVX =
             VkBuffer
        type FieldOptional "buffer" VkObjectTableVertexBufferEntryNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "buffer" VkObjectTableVertexBufferEntryNVX =
             #{offset VkObjectTableVertexBufferEntryNVX, buffer}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableVertexBufferEntryNVX, buffer}

instance CanReadField "buffer" VkObjectTableVertexBufferEntryNVX
         where
        {-# INLINE getField #-}
        getField = vkBuffer

        {-# INLINE readField #-}
        readField = readVkBuffer

instance CanWriteField "buffer" VkObjectTableVertexBufferEntryNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkBuffer

instance Show VkObjectTableVertexBufferEntryNVX where
        showsPrec d x
          = showString "VkObjectTableVertexBufferEntryNVX {" .
              showString "vkType = " .
                showsPrec d (vkType x) .
                  showString ", " .
                    showString "vkFlags = " .
                      showsPrec d (vkFlags x) .
                        showString ", " .
                          showString "vkBuffer = " . showsPrec d (vkBuffer x) . showChar '}'

-- | > typedef struct VkObjectTableIndexBufferEntryNVX {
--   >     VkObjectEntryTypeNVX         type;
--   >     VkObjectEntryUsageFlagsNVX   flags;
--   >     VkBuffer                     buffer;
--   >     VkIndexType                  indexType;
--   > } VkObjectTableIndexBufferEntryNVX;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/VkObjectTableIndexBufferEntryNVX.html VkObjectTableIndexBufferEntryNVX registry at www.khronos.org>
data VkObjectTableIndexBufferEntryNVX = VkObjectTableIndexBufferEntryNVX## ByteArray##

instance Eq VkObjectTableIndexBufferEntryNVX where
        (VkObjectTableIndexBufferEntryNVX## a) ==
          (VkObjectTableIndexBufferEntryNVX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkObjectTableIndexBufferEntryNVX where
        (VkObjectTableIndexBufferEntryNVX## a) `compare`
          (VkObjectTableIndexBufferEntryNVX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkObjectTableIndexBufferEntryNVX where
        sizeOf ~_ = #{size VkObjectTableIndexBufferEntryNVX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkObjectTableIndexBufferEntryNVX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkObjectTableIndexBufferEntryNVX),
            I## a <- alignment (undefined :: VkObjectTableIndexBufferEntryNVX) =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkObjectTableIndexBufferEntryNVX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkObjectTableIndexBufferEntryNVX## ba)
          | I## n <- sizeOf (undefined :: VkObjectTableIndexBufferEntryNVX) =
            IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkObjectTableIndexBufferEntryNVX where
        type StructFields VkObjectTableIndexBufferEntryNVX =
             '["type", "flags", "buffer", "indexType"] -- ' closing tick for hsc2hs

        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkObjectTableIndexBufferEntryNVX),
            I## a <- alignment (undefined :: VkObjectTableIndexBufferEntryNVX) =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkObjectTableIndexBufferEntryNVX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkObjectTableIndexBufferEntryNVX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr = fromForeignPtr## VkObjectTableIndexBufferEntryNVX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkObjectTableIndexBufferEntryNVX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkObjectTableIndexBufferEntryNVX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkObjectTableIndexBufferEntryNVX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkType VkObjectTableIndexBufferEntryNVX where
        type VkTypeMType VkObjectTableIndexBufferEntryNVX =
             VkObjectEntryTypeNVX

        {-# NOINLINE vkType #-}
        vkType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableIndexBufferEntryNVX, type})

        {-# INLINE vkTypeByteOffset #-}
        vkTypeByteOffset ~_
          = #{offset VkObjectTableIndexBufferEntryNVX, type}

        {-# INLINE readVkType #-}
        readVkType p
          = peekByteOff p #{offset VkObjectTableIndexBufferEntryNVX, type}

        {-# INLINE writeVkType #-}
        writeVkType p
          = pokeByteOff p #{offset VkObjectTableIndexBufferEntryNVX, type}

instance {-# OVERLAPPING #-}
         HasField "type" VkObjectTableIndexBufferEntryNVX where
        type FieldType "type" VkObjectTableIndexBufferEntryNVX =
             VkObjectEntryTypeNVX
        type FieldOptional "type" VkObjectTableIndexBufferEntryNVX = 'False -- ' closing tick for hsc2hs
        type FieldOffset "type" VkObjectTableIndexBufferEntryNVX =
             #{offset VkObjectTableIndexBufferEntryNVX, type}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableIndexBufferEntryNVX, type}

instance CanReadField "type" VkObjectTableIndexBufferEntryNVX where
        {-# INLINE getField #-}
        getField = vkType

        {-# INLINE readField #-}
        readField = readVkType

instance CanWriteField "type" VkObjectTableIndexBufferEntryNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkType

instance {-# OVERLAPPING #-}
         HasVkFlags VkObjectTableIndexBufferEntryNVX where
        type VkFlagsMType VkObjectTableIndexBufferEntryNVX =
             VkObjectEntryUsageFlagsNVX

        {-# NOINLINE vkFlags #-}
        vkFlags x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableIndexBufferEntryNVX, flags})

        {-# INLINE vkFlagsByteOffset #-}
        vkFlagsByteOffset ~_
          = #{offset VkObjectTableIndexBufferEntryNVX, flags}

        {-# INLINE readVkFlags #-}
        readVkFlags p
          = peekByteOff p #{offset VkObjectTableIndexBufferEntryNVX, flags}

        {-# INLINE writeVkFlags #-}
        writeVkFlags p
          = pokeByteOff p #{offset VkObjectTableIndexBufferEntryNVX, flags}

instance {-# OVERLAPPING #-}
         HasField "flags" VkObjectTableIndexBufferEntryNVX where
        type FieldType "flags" VkObjectTableIndexBufferEntryNVX =
             VkObjectEntryUsageFlagsNVX
        type FieldOptional "flags" VkObjectTableIndexBufferEntryNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "flags" VkObjectTableIndexBufferEntryNVX =
             #{offset VkObjectTableIndexBufferEntryNVX, flags}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableIndexBufferEntryNVX, flags}

instance CanReadField "flags" VkObjectTableIndexBufferEntryNVX
         where
        {-# INLINE getField #-}
        getField = vkFlags

        {-# INLINE readField #-}
        readField = readVkFlags

instance CanWriteField "flags" VkObjectTableIndexBufferEntryNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkFlags

instance {-# OVERLAPPING #-}
         HasVkBuffer VkObjectTableIndexBufferEntryNVX where
        type VkBufferMType VkObjectTableIndexBufferEntryNVX = VkBuffer

        {-# NOINLINE vkBuffer #-}
        vkBuffer x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableIndexBufferEntryNVX, buffer})

        {-# INLINE vkBufferByteOffset #-}
        vkBufferByteOffset ~_
          = #{offset VkObjectTableIndexBufferEntryNVX, buffer}

        {-# INLINE readVkBuffer #-}
        readVkBuffer p
          = peekByteOff p #{offset VkObjectTableIndexBufferEntryNVX, buffer}

        {-# INLINE writeVkBuffer #-}
        writeVkBuffer p
          = pokeByteOff p #{offset VkObjectTableIndexBufferEntryNVX, buffer}

instance {-# OVERLAPPING #-}
         HasField "buffer" VkObjectTableIndexBufferEntryNVX where
        type FieldType "buffer" VkObjectTableIndexBufferEntryNVX = VkBuffer
        type FieldOptional "buffer" VkObjectTableIndexBufferEntryNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "buffer" VkObjectTableIndexBufferEntryNVX =
             #{offset VkObjectTableIndexBufferEntryNVX, buffer}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableIndexBufferEntryNVX, buffer}

instance CanReadField "buffer" VkObjectTableIndexBufferEntryNVX
         where
        {-# INLINE getField #-}
        getField = vkBuffer

        {-# INLINE readField #-}
        readField = readVkBuffer

instance CanWriteField "buffer" VkObjectTableIndexBufferEntryNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkBuffer

instance {-# OVERLAPPING #-}
         HasVkIndexType VkObjectTableIndexBufferEntryNVX where
        type VkIndexTypeMType VkObjectTableIndexBufferEntryNVX =
             VkIndexType

        {-# NOINLINE vkIndexType #-}
        vkIndexType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTableIndexBufferEntryNVX, indexType})

        {-# INLINE vkIndexTypeByteOffset #-}
        vkIndexTypeByteOffset ~_
          = #{offset VkObjectTableIndexBufferEntryNVX, indexType}

        {-# INLINE readVkIndexType #-}
        readVkIndexType p
          = peekByteOff p #{offset VkObjectTableIndexBufferEntryNVX, indexType}

        {-# INLINE writeVkIndexType #-}
        writeVkIndexType p
          = pokeByteOff p #{offset VkObjectTableIndexBufferEntryNVX, indexType}

instance {-# OVERLAPPING #-}
         HasField "indexType" VkObjectTableIndexBufferEntryNVX where
        type FieldType "indexType" VkObjectTableIndexBufferEntryNVX =
             VkIndexType
        type FieldOptional "indexType" VkObjectTableIndexBufferEntryNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "indexType" VkObjectTableIndexBufferEntryNVX =
             #{offset VkObjectTableIndexBufferEntryNVX, indexType}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTableIndexBufferEntryNVX, indexType}

instance CanReadField "indexType" VkObjectTableIndexBufferEntryNVX
         where
        {-# INLINE getField #-}
        getField = vkIndexType

        {-# INLINE readField #-}
        readField = readVkIndexType

instance CanWriteField "indexType" VkObjectTableIndexBufferEntryNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkIndexType

instance Show VkObjectTableIndexBufferEntryNVX where
        showsPrec d x
          = showString "VkObjectTableIndexBufferEntryNVX {" .
              showString "vkType = " .
                showsPrec d (vkType x) .
                  showString ", " .
                    showString "vkFlags = " .
                      showsPrec d (vkFlags x) .
                        showString ", " .
                          showString "vkBuffer = " .
                            showsPrec d (vkBuffer x) .
                              showString ", " .
                                showString "vkIndexType = " .
                                  showsPrec d (vkIndexType x) . showChar '}'

-- | > typedef struct VkObjectTablePushConstantEntryNVX {
--   >     VkObjectEntryTypeNVX         type;
--   >     VkObjectEntryUsageFlagsNVX   flags;
--   >     VkPipelineLayout             pipelineLayout;
--   >     VkShaderStageFlags           stageFlags;
--   > } VkObjectTablePushConstantEntryNVX;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/VkObjectTablePushConstantEntryNVX.html VkObjectTablePushConstantEntryNVX registry at www.khronos.org>
data VkObjectTablePushConstantEntryNVX = VkObjectTablePushConstantEntryNVX## ByteArray##

instance Eq VkObjectTablePushConstantEntryNVX where
        (VkObjectTablePushConstantEntryNVX## a) ==
          (VkObjectTablePushConstantEntryNVX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkObjectTablePushConstantEntryNVX where
        (VkObjectTablePushConstantEntryNVX## a) `compare`
          (VkObjectTablePushConstantEntryNVX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkObjectTablePushConstantEntryNVX where
        sizeOf ~_ = #{size VkObjectTablePushConstantEntryNVX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkObjectTablePushConstantEntryNVX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkObjectTablePushConstantEntryNVX),
            I## a <- alignment (undefined :: VkObjectTablePushConstantEntryNVX)
            =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkObjectTablePushConstantEntryNVX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkObjectTablePushConstantEntryNVX## ba)
          | I## n <- sizeOf (undefined :: VkObjectTablePushConstantEntryNVX) =
            IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkObjectTablePushConstantEntryNVX where
        type StructFields VkObjectTablePushConstantEntryNVX =
             '["type", "flags", "pipelineLayout", "stageFlags"] -- ' closing tick for hsc2hs

        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkObjectTablePushConstantEntryNVX),
            I## a <- alignment (undefined :: VkObjectTablePushConstantEntryNVX)
            =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkObjectTablePushConstantEntryNVX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkObjectTablePushConstantEntryNVX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr = fromForeignPtr## VkObjectTablePushConstantEntryNVX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkObjectTablePushConstantEntryNVX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkObjectTablePushConstantEntryNVX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkObjectTablePushConstantEntryNVX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkType VkObjectTablePushConstantEntryNVX where
        type VkTypeMType VkObjectTablePushConstantEntryNVX =
             VkObjectEntryTypeNVX

        {-# NOINLINE vkType #-}
        vkType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTablePushConstantEntryNVX, type})

        {-# INLINE vkTypeByteOffset #-}
        vkTypeByteOffset ~_
          = #{offset VkObjectTablePushConstantEntryNVX, type}

        {-# INLINE readVkType #-}
        readVkType p
          = peekByteOff p #{offset VkObjectTablePushConstantEntryNVX, type}

        {-# INLINE writeVkType #-}
        writeVkType p
          = pokeByteOff p #{offset VkObjectTablePushConstantEntryNVX, type}

instance {-# OVERLAPPING #-}
         HasField "type" VkObjectTablePushConstantEntryNVX where
        type FieldType "type" VkObjectTablePushConstantEntryNVX =
             VkObjectEntryTypeNVX
        type FieldOptional "type" VkObjectTablePushConstantEntryNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "type" VkObjectTablePushConstantEntryNVX =
             #{offset VkObjectTablePushConstantEntryNVX, type}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTablePushConstantEntryNVX, type}

instance CanReadField "type" VkObjectTablePushConstantEntryNVX
         where
        {-# INLINE getField #-}
        getField = vkType

        {-# INLINE readField #-}
        readField = readVkType

instance CanWriteField "type" VkObjectTablePushConstantEntryNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkType

instance {-# OVERLAPPING #-}
         HasVkFlags VkObjectTablePushConstantEntryNVX where
        type VkFlagsMType VkObjectTablePushConstantEntryNVX =
             VkObjectEntryUsageFlagsNVX

        {-# NOINLINE vkFlags #-}
        vkFlags x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTablePushConstantEntryNVX, flags})

        {-# INLINE vkFlagsByteOffset #-}
        vkFlagsByteOffset ~_
          = #{offset VkObjectTablePushConstantEntryNVX, flags}

        {-# INLINE readVkFlags #-}
        readVkFlags p
          = peekByteOff p #{offset VkObjectTablePushConstantEntryNVX, flags}

        {-# INLINE writeVkFlags #-}
        writeVkFlags p
          = pokeByteOff p #{offset VkObjectTablePushConstantEntryNVX, flags}

instance {-# OVERLAPPING #-}
         HasField "flags" VkObjectTablePushConstantEntryNVX where
        type FieldType "flags" VkObjectTablePushConstantEntryNVX =
             VkObjectEntryUsageFlagsNVX
        type FieldOptional "flags" VkObjectTablePushConstantEntryNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "flags" VkObjectTablePushConstantEntryNVX =
             #{offset VkObjectTablePushConstantEntryNVX, flags}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTablePushConstantEntryNVX, flags}

instance CanReadField "flags" VkObjectTablePushConstantEntryNVX
         where
        {-# INLINE getField #-}
        getField = vkFlags

        {-# INLINE readField #-}
        readField = readVkFlags

instance CanWriteField "flags" VkObjectTablePushConstantEntryNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkFlags

instance {-# OVERLAPPING #-}
         HasVkPipelineLayout VkObjectTablePushConstantEntryNVX where
        type VkPipelineLayoutMType VkObjectTablePushConstantEntryNVX =
             VkPipelineLayout

        {-# NOINLINE vkPipelineLayout #-}
        vkPipelineLayout x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTablePushConstantEntryNVX, pipelineLayout})

        {-# INLINE vkPipelineLayoutByteOffset #-}
        vkPipelineLayoutByteOffset ~_
          = #{offset VkObjectTablePushConstantEntryNVX, pipelineLayout}

        {-# INLINE readVkPipelineLayout #-}
        readVkPipelineLayout p
          = peekByteOff p #{offset VkObjectTablePushConstantEntryNVX, pipelineLayout}

        {-# INLINE writeVkPipelineLayout #-}
        writeVkPipelineLayout p
          = pokeByteOff p #{offset VkObjectTablePushConstantEntryNVX, pipelineLayout}

instance {-# OVERLAPPING #-}
         HasField "pipelineLayout" VkObjectTablePushConstantEntryNVX where
        type FieldType "pipelineLayout" VkObjectTablePushConstantEntryNVX =
             VkPipelineLayout
        type FieldOptional "pipelineLayout"
               VkObjectTablePushConstantEntryNVX
             = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pipelineLayout" VkObjectTablePushConstantEntryNVX
             =
             #{offset VkObjectTablePushConstantEntryNVX, pipelineLayout}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTablePushConstantEntryNVX, pipelineLayout}

instance CanReadField "pipelineLayout"
           VkObjectTablePushConstantEntryNVX
         where
        {-# INLINE getField #-}
        getField = vkPipelineLayout

        {-# INLINE readField #-}
        readField = readVkPipelineLayout

instance CanWriteField "pipelineLayout"
           VkObjectTablePushConstantEntryNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkPipelineLayout

instance {-# OVERLAPPING #-}
         HasVkStageFlags VkObjectTablePushConstantEntryNVX where
        type VkStageFlagsMType VkObjectTablePushConstantEntryNVX =
             VkShaderStageFlags

        {-# NOINLINE vkStageFlags #-}
        vkStageFlags x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkObjectTablePushConstantEntryNVX, stageFlags})

        {-# INLINE vkStageFlagsByteOffset #-}
        vkStageFlagsByteOffset ~_
          = #{offset VkObjectTablePushConstantEntryNVX, stageFlags}

        {-# INLINE readVkStageFlags #-}
        readVkStageFlags p
          = peekByteOff p #{offset VkObjectTablePushConstantEntryNVX, stageFlags}

        {-# INLINE writeVkStageFlags #-}
        writeVkStageFlags p
          = pokeByteOff p #{offset VkObjectTablePushConstantEntryNVX, stageFlags}

instance {-# OVERLAPPING #-}
         HasField "stageFlags" VkObjectTablePushConstantEntryNVX where
        type FieldType "stageFlags" VkObjectTablePushConstantEntryNVX =
             VkShaderStageFlags
        type FieldOptional "stageFlags" VkObjectTablePushConstantEntryNVX =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "stageFlags" VkObjectTablePushConstantEntryNVX =
             #{offset VkObjectTablePushConstantEntryNVX, stageFlags}

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkObjectTablePushConstantEntryNVX, stageFlags}

instance CanReadField "stageFlags"
           VkObjectTablePushConstantEntryNVX
         where
        {-# INLINE getField #-}
        getField = vkStageFlags

        {-# INLINE readField #-}
        readField = readVkStageFlags

instance CanWriteField "stageFlags"
           VkObjectTablePushConstantEntryNVX
         where
        {-# INLINE writeField #-}
        writeField = writeVkStageFlags

instance Show VkObjectTablePushConstantEntryNVX where
        showsPrec d x
          = showString "VkObjectTablePushConstantEntryNVX {" .
              showString "vkType = " .
                showsPrec d (vkType x) .
                  showString ", " .
                    showString "vkFlags = " .
                      showsPrec d (vkFlags x) .
                        showString ", " .
                          showString "vkPipelineLayout = " .
                            showsPrec d (vkPipelineLayout x) .
                              showString ", " .
                                showString "vkStageFlags = " .
                                  showsPrec d (vkStageFlags x) . showChar '}'

-- | queues: @graphics,compute@
--
--   renderpass: @inside@
--
--   > void vkCmdProcessCommandsNVX
--   >     ( VkCommandBuffer commandBuffer
--   >     , const VkCmdProcessCommandsInfoNVX* pProcessCommandsInfo
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/vkCmdProcessCommandsNVX.html vkCmdProcessCommandsNVX registry at www.khronos.org>
foreign import ccall unsafe "vkCmdProcessCommandsNVX"
               vkCmdProcessCommandsNVX ::
               VkCommandBuffer -- ^ commandBuffer
                               -> Ptr VkCmdProcessCommandsInfoNVX -- ^ pProcessCommandsInfo
                                                                  -> IO ()

-- | queues: @graphics,compute@
--
--   renderpass: @inside@
--
--   > void vkCmdReserveSpaceForCommandsNVX
--   >     ( VkCommandBuffer commandBuffer
--   >     , const VkCmdReserveSpaceForCommandsInfoNVX* pReserveSpaceInfo
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/vkCmdReserveSpaceForCommandsNVX.html vkCmdReserveSpaceForCommandsNVX registry at www.khronos.org>
foreign import ccall unsafe "vkCmdReserveSpaceForCommandsNVX"
               vkCmdReserveSpaceForCommandsNVX ::
               VkCommandBuffer -- ^ commandBuffer
                               -> Ptr VkCmdReserveSpaceForCommandsInfoNVX -- ^ pReserveSpaceInfo
                                                                          -> IO ()

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkCreateIndirectCommandsLayoutNVX
--   >     ( VkDevice device
--   >     , const VkIndirectCommandsLayoutCreateInfoNVX* pCreateInfo
--   >     , const VkAllocationCallbacks* pAllocator
--   >     , VkIndirectCommandsLayoutNVX* pIndirectCommandsLayout
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/vkCreateIndirectCommandsLayoutNVX.html vkCreateIndirectCommandsLayoutNVX registry at www.khronos.org>
foreign import ccall unsafe "vkCreateIndirectCommandsLayoutNVX"
               vkCreateIndirectCommandsLayoutNVX ::
               VkDevice -- ^ device
                        ->
                 Ptr VkIndirectCommandsLayoutCreateInfoNVX -- ^ pCreateInfo
                                                           ->
                   Ptr VkAllocationCallbacks -- ^ pAllocator
                                             ->
                     Ptr VkIndirectCommandsLayoutNVX -- ^ pIndirectCommandsLayout
                                                     -> IO VkResult

-- | > void vkDestroyIndirectCommandsLayoutNVX
--   >     ( VkDevice device
--   >     , VkIndirectCommandsLayoutNVX indirectCommandsLayout
--   >     , const VkAllocationCallbacks* pAllocator
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/vkDestroyIndirectCommandsLayoutNVX.html vkDestroyIndirectCommandsLayoutNVX registry at www.khronos.org>
foreign import ccall unsafe "vkDestroyIndirectCommandsLayoutNVX"
               vkDestroyIndirectCommandsLayoutNVX ::
               VkDevice -- ^ device
                        ->
                 VkIndirectCommandsLayoutNVX -- ^ indirectCommandsLayout
                                             -> Ptr VkAllocationCallbacks -- ^ pAllocator
                                                                          -> IO ()

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkCreateObjectTableNVX
--   >     ( VkDevice device
--   >     , const VkObjectTableCreateInfoNVX* pCreateInfo
--   >     , const VkAllocationCallbacks* pAllocator
--   >     , VkObjectTableNVX* pObjectTable
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/vkCreateObjectTableNVX.html vkCreateObjectTableNVX registry at www.khronos.org>
foreign import ccall unsafe "vkCreateObjectTableNVX"
               vkCreateObjectTableNVX ::
               VkDevice -- ^ device
                        ->
                 Ptr VkObjectTableCreateInfoNVX -- ^ pCreateInfo
                                                ->
                   Ptr VkAllocationCallbacks -- ^ pAllocator
                                             -> Ptr VkObjectTableNVX -- ^ pObjectTable
                                                                     -> IO VkResult

-- | > void vkDestroyObjectTableNVX
--   >     ( VkDevice device
--   >     , VkObjectTableNVX objectTable
--   >     , const VkAllocationCallbacks* pAllocator
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/vkDestroyObjectTableNVX.html vkDestroyObjectTableNVX registry at www.khronos.org>
foreign import ccall unsafe "vkDestroyObjectTableNVX"
               vkDestroyObjectTableNVX ::
               VkDevice -- ^ device
                        -> VkObjectTableNVX -- ^ objectTable
                                            -> Ptr VkAllocationCallbacks -- ^ pAllocator
                                                                         -> IO ()

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkRegisterObjectsNVX
--   >     ( VkDevice device
--   >     , VkObjectTableNVX objectTable
--   >     , uint32_t objectCount
--   >     , const VkObjectTableEntryNVX* const*    ppObjectTableEntries
--   >     , const uint32_t* pObjectIndices
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/vkRegisterObjectsNVX.html vkRegisterObjectsNVX registry at www.khronos.org>
foreign import ccall unsafe "vkRegisterObjectsNVX"
               vkRegisterObjectsNVX ::
               VkDevice -- ^ device
                        ->
                 VkObjectTableNVX -- ^ objectTable
                                  ->
                   Word32 -- ^ objectCount
                          ->
                     Ptr (Ptr VkObjectTableEntryNVX) -- ^ ppObjectTableEntries
                                                     -> Ptr Word32 -- ^ pObjectIndices
                                                                   -> IO VkResult

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkUnregisterObjectsNVX
--   >     ( VkDevice device
--   >     , VkObjectTableNVX objectTable
--   >     , uint32_t objectCount
--   >     , const VkObjectEntryTypeNVX* pObjectEntryTypes
--   >     , const uint32_t* pObjectIndices
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/vkUnregisterObjectsNVX.html vkUnregisterObjectsNVX registry at www.khronos.org>
foreign import ccall unsafe "vkUnregisterObjectsNVX"
               vkUnregisterObjectsNVX ::
               VkDevice -- ^ device
                        ->
                 VkObjectTableNVX -- ^ objectTable
                                  ->
                   Word32 -- ^ objectCount
                          -> Ptr VkObjectEntryTypeNVX -- ^ pObjectEntryTypes
                                                      -> Ptr Word32 -- ^ pObjectIndices
                                                                    -> IO VkResult

-- | > void vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkDeviceGeneratedCommandsFeaturesNVX* pFeatures
--   >     , VkDeviceGeneratedCommandsLimitsNVX* pLimits
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX.html vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX registry at www.khronos.org>
foreign import ccall unsafe
               "vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX"
               vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 Ptr VkDeviceGeneratedCommandsFeaturesNVX -- ^ pFeatures
                                                          ->
                   Ptr VkDeviceGeneratedCommandsLimitsNVX -- ^ pLimits
                                                          -> IO ()

pattern VK_NVX_DEVICE_GENERATED_COMMANDS_SPEC_VERSION ::
        (Num a, Eq a) => a

pattern VK_NVX_DEVICE_GENERATED_COMMANDS_SPEC_VERSION = 3

type VK_NVX_DEVICE_GENERATED_COMMANDS_SPEC_VERSION = 3

pattern VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME :: CString

pattern VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME <-
        (is_VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME -> True)
  where VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME
          = _VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME

_VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME :: CString

{-# INLINE _VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME #-}
_VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME
  = Ptr "VK_NVX_device_generated_commands\NUL"##

is_VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME ::
                                                   CString -> Bool

{-# INLINE is_VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME #-}
is_VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME
  = (_VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME ==)

type VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME =
     "VK_NVX_device_generated_commands"

pattern VK_STRUCTURE_TYPE_OBJECT_TABLE_CREATE_INFO_NVX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_OBJECT_TABLE_CREATE_INFO_NVX =
        VkStructureType 1000086000

pattern VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NVX
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NVX
        = VkStructureType 1000086001

pattern VK_STRUCTURE_TYPE_CMD_PROCESS_COMMANDS_INFO_NVX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_CMD_PROCESS_COMMANDS_INFO_NVX =
        VkStructureType 1000086002

pattern VK_STRUCTURE_TYPE_CMD_RESERVE_SPACE_FOR_COMMANDS_INFO_NVX
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_CMD_RESERVE_SPACE_FOR_COMMANDS_INFO_NVX =
        VkStructureType 1000086003

pattern VK_STRUCTURE_TYPE_DEVICE_GENERATED_COMMANDS_LIMITS_NVX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DEVICE_GENERATED_COMMANDS_LIMITS_NVX =
        VkStructureType 1000086004

pattern VK_STRUCTURE_TYPE_DEVICE_GENERATED_COMMANDS_FEATURES_NVX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DEVICE_GENERATED_COMMANDS_FEATURES_NVX =
        VkStructureType 1000086005

-- | bitpos = @17@
pattern VK_PIPELINE_STAGE_COMMAND_PROCESS_BIT_NVX ::
        VkPipelineStageFlagBits

pattern VK_PIPELINE_STAGE_COMMAND_PROCESS_BIT_NVX =
        VkPipelineStageFlagBits 131072

-- | bitpos = @17@
pattern VK_ACCESS_COMMAND_PROCESS_READ_BIT_NVX :: VkAccessFlagBits

pattern VK_ACCESS_COMMAND_PROCESS_READ_BIT_NVX =
        VkAccessFlagBits 131072

-- | bitpos = @18@
pattern VK_ACCESS_COMMAND_PROCESS_WRITE_BIT_NVX :: VkAccessFlagBits

pattern VK_ACCESS_COMMAND_PROCESS_WRITE_BIT_NVX =
        VkAccessFlagBits 262144

-- | VkobjectTableNVX
pattern VK_OBJECT_TYPE_OBJECT_TABLE_NVX :: VkObjectType

pattern VK_OBJECT_TYPE_OBJECT_TABLE_NVX = VkObjectType 1000086000

-- | VkIndirectCommandsLayoutNVX
pattern VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NVX :: VkObjectType

pattern VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NVX =
        VkObjectType 1000086001