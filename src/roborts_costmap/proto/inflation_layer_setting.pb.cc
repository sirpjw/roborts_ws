// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: inflation_layer_setting.proto

#include "inflation_layer_setting.pb.h"

#include <algorithm>

#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/extension_set.h>
#include <google/protobuf/wire_format_lite.h>
#include <google/protobuf/descriptor.h>
#include <google/protobuf/generated_message_reflection.h>
#include <google/protobuf/reflection_ops.h>
#include <google/protobuf/wire_format.h>
// @@protoc_insertion_point(includes)
#include <google/protobuf/port_def.inc>

PROTOBUF_PRAGMA_INIT_SEG

namespace _pb = ::PROTOBUF_NAMESPACE_ID;
namespace _pbi = _pb::internal;

namespace roborts_costmap {
PROTOBUF_CONSTEXPR ParaInflationLayer::ParaInflationLayer(
    ::_pbi::ConstantInitialized): _impl_{
    /*decltype(_impl_._has_bits_)*/{}
  , /*decltype(_impl_._cached_size_)*/{}
  , /*decltype(_impl_.inflation_radius_)*/0
  , /*decltype(_impl_.cost_scaling_factor_)*/0
  , /*decltype(_impl_.is_debug_)*/false
  , /*decltype(_impl_.is_raw_rosmessage_)*/false} {}
struct ParaInflationLayerDefaultTypeInternal {
  PROTOBUF_CONSTEXPR ParaInflationLayerDefaultTypeInternal()
      : _instance(::_pbi::ConstantInitialized{}) {}
  ~ParaInflationLayerDefaultTypeInternal() {}
  union {
    ParaInflationLayer _instance;
  };
};
PROTOBUF_ATTRIBUTE_NO_DESTROY PROTOBUF_CONSTINIT PROTOBUF_ATTRIBUTE_INIT_PRIORITY1 ParaInflationLayerDefaultTypeInternal _ParaInflationLayer_default_instance_;
}  // namespace roborts_costmap
static ::_pb::Metadata file_level_metadata_inflation_5flayer_5fsetting_2eproto[1];
static constexpr ::_pb::EnumDescriptor const** file_level_enum_descriptors_inflation_5flayer_5fsetting_2eproto = nullptr;
static constexpr ::_pb::ServiceDescriptor const** file_level_service_descriptors_inflation_5flayer_5fsetting_2eproto = nullptr;

const uint32_t TableStruct_inflation_5flayer_5fsetting_2eproto::offsets[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaInflationLayer, _impl_._has_bits_),
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaInflationLayer, _internal_metadata_),
  ~0u,  // no _extensions_
  ~0u,  // no _oneof_case_
  ~0u,  // no _weak_field_map_
  ~0u,  // no _inlined_string_donated_
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaInflationLayer, _impl_.inflation_radius_),
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaInflationLayer, _impl_.cost_scaling_factor_),
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaInflationLayer, _impl_.is_debug_),
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaInflationLayer, _impl_.is_raw_rosmessage_),
  0,
  1,
  2,
  3,
};
static const ::_pbi::MigrationSchema schemas[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
  { 0, 10, -1, sizeof(::roborts_costmap::ParaInflationLayer)},
};

static const ::_pb::Message* const file_default_instances[] = {
  &::roborts_costmap::_ParaInflationLayer_default_instance_._instance,
};

const char descriptor_table_protodef_inflation_5flayer_5fsetting_2eproto[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) =
  "\n\035inflation_layer_setting.proto\022\017roborts"
  "_costmap\"x\n\022ParaInflationLayer\022\030\n\020inflat"
  "ion_radius\030\001 \002(\001\022\033\n\023cost_scaling_factor\030"
  "\002 \002(\001\022\020\n\010is_debug\030\003 \002(\010\022\031\n\021is_raw_rosmes"
  "sage\030\004 \002(\010"
  ;
static ::_pbi::once_flag descriptor_table_inflation_5flayer_5fsetting_2eproto_once;
const ::_pbi::DescriptorTable descriptor_table_inflation_5flayer_5fsetting_2eproto = {
    false, false, 170, descriptor_table_protodef_inflation_5flayer_5fsetting_2eproto,
    "inflation_layer_setting.proto",
    &descriptor_table_inflation_5flayer_5fsetting_2eproto_once, nullptr, 0, 1,
    schemas, file_default_instances, TableStruct_inflation_5flayer_5fsetting_2eproto::offsets,
    file_level_metadata_inflation_5flayer_5fsetting_2eproto, file_level_enum_descriptors_inflation_5flayer_5fsetting_2eproto,
    file_level_service_descriptors_inflation_5flayer_5fsetting_2eproto,
};
PROTOBUF_ATTRIBUTE_WEAK const ::_pbi::DescriptorTable* descriptor_table_inflation_5flayer_5fsetting_2eproto_getter() {
  return &descriptor_table_inflation_5flayer_5fsetting_2eproto;
}

// Force running AddDescriptors() at dynamic initialization time.
PROTOBUF_ATTRIBUTE_INIT_PRIORITY2 static ::_pbi::AddDescriptorsRunner dynamic_init_dummy_inflation_5flayer_5fsetting_2eproto(&descriptor_table_inflation_5flayer_5fsetting_2eproto);
namespace roborts_costmap {

// ===================================================================

class ParaInflationLayer::_Internal {
 public:
  using HasBits = decltype(std::declval<ParaInflationLayer>()._impl_._has_bits_);
  static void set_has_inflation_radius(HasBits* has_bits) {
    (*has_bits)[0] |= 1u;
  }
  static void set_has_cost_scaling_factor(HasBits* has_bits) {
    (*has_bits)[0] |= 2u;
  }
  static void set_has_is_debug(HasBits* has_bits) {
    (*has_bits)[0] |= 4u;
  }
  static void set_has_is_raw_rosmessage(HasBits* has_bits) {
    (*has_bits)[0] |= 8u;
  }
  static bool MissingRequiredFields(const HasBits& has_bits) {
    return ((has_bits[0] & 0x0000000f) ^ 0x0000000f) != 0;
  }
};

ParaInflationLayer::ParaInflationLayer(::PROTOBUF_NAMESPACE_ID::Arena* arena,
                         bool is_message_owned)
  : ::PROTOBUF_NAMESPACE_ID::Message(arena, is_message_owned) {
  SharedCtor(arena, is_message_owned);
  // @@protoc_insertion_point(arena_constructor:roborts_costmap.ParaInflationLayer)
}
ParaInflationLayer::ParaInflationLayer(const ParaInflationLayer& from)
  : ::PROTOBUF_NAMESPACE_ID::Message() {
  ParaInflationLayer* const _this = this; (void)_this;
  new (&_impl_) Impl_{
      decltype(_impl_._has_bits_){from._impl_._has_bits_}
    , /*decltype(_impl_._cached_size_)*/{}
    , decltype(_impl_.inflation_radius_){}
    , decltype(_impl_.cost_scaling_factor_){}
    , decltype(_impl_.is_debug_){}
    , decltype(_impl_.is_raw_rosmessage_){}};

  _internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
  ::memcpy(&_impl_.inflation_radius_, &from._impl_.inflation_radius_,
    static_cast<size_t>(reinterpret_cast<char*>(&_impl_.is_raw_rosmessage_) -
    reinterpret_cast<char*>(&_impl_.inflation_radius_)) + sizeof(_impl_.is_raw_rosmessage_));
  // @@protoc_insertion_point(copy_constructor:roborts_costmap.ParaInflationLayer)
}

inline void ParaInflationLayer::SharedCtor(
    ::_pb::Arena* arena, bool is_message_owned) {
  (void)arena;
  (void)is_message_owned;
  new (&_impl_) Impl_{
      decltype(_impl_._has_bits_){}
    , /*decltype(_impl_._cached_size_)*/{}
    , decltype(_impl_.inflation_radius_){0}
    , decltype(_impl_.cost_scaling_factor_){0}
    , decltype(_impl_.is_debug_){false}
    , decltype(_impl_.is_raw_rosmessage_){false}
  };
}

ParaInflationLayer::~ParaInflationLayer() {
  // @@protoc_insertion_point(destructor:roborts_costmap.ParaInflationLayer)
  if (auto *arena = _internal_metadata_.DeleteReturnArena<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>()) {
  (void)arena;
    return;
  }
  SharedDtor();
}

inline void ParaInflationLayer::SharedDtor() {
  GOOGLE_DCHECK(GetArenaForAllocation() == nullptr);
}

void ParaInflationLayer::SetCachedSize(int size) const {
  _impl_._cached_size_.Set(size);
}

void ParaInflationLayer::Clear() {
// @@protoc_insertion_point(message_clear_start:roborts_costmap.ParaInflationLayer)
  uint32_t cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  cached_has_bits = _impl_._has_bits_[0];
  if (cached_has_bits & 0x0000000fu) {
    ::memset(&_impl_.inflation_radius_, 0, static_cast<size_t>(
        reinterpret_cast<char*>(&_impl_.is_raw_rosmessage_) -
        reinterpret_cast<char*>(&_impl_.inflation_radius_)) + sizeof(_impl_.is_raw_rosmessage_));
  }
  _impl_._has_bits_.Clear();
  _internal_metadata_.Clear<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>();
}

const char* ParaInflationLayer::_InternalParse(const char* ptr, ::_pbi::ParseContext* ctx) {
#define CHK_(x) if (PROTOBUF_PREDICT_FALSE(!(x))) goto failure
  _Internal::HasBits has_bits{};
  while (!ctx->Done(&ptr)) {
    uint32_t tag;
    ptr = ::_pbi::ReadTag(ptr, &tag);
    switch (tag >> 3) {
      // required double inflation_radius = 1;
      case 1:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 9)) {
          _Internal::set_has_inflation_radius(&has_bits);
          _impl_.inflation_radius_ = ::PROTOBUF_NAMESPACE_ID::internal::UnalignedLoad<double>(ptr);
          ptr += sizeof(double);
        } else
          goto handle_unusual;
        continue;
      // required double cost_scaling_factor = 2;
      case 2:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 17)) {
          _Internal::set_has_cost_scaling_factor(&has_bits);
          _impl_.cost_scaling_factor_ = ::PROTOBUF_NAMESPACE_ID::internal::UnalignedLoad<double>(ptr);
          ptr += sizeof(double);
        } else
          goto handle_unusual;
        continue;
      // required bool is_debug = 3;
      case 3:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 24)) {
          _Internal::set_has_is_debug(&has_bits);
          _impl_.is_debug_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint64(&ptr);
          CHK_(ptr);
        } else
          goto handle_unusual;
        continue;
      // required bool is_raw_rosmessage = 4;
      case 4:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 32)) {
          _Internal::set_has_is_raw_rosmessage(&has_bits);
          _impl_.is_raw_rosmessage_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint64(&ptr);
          CHK_(ptr);
        } else
          goto handle_unusual;
        continue;
      default:
        goto handle_unusual;
    }  // switch
  handle_unusual:
    if ((tag == 0) || ((tag & 7) == 4)) {
      CHK_(ptr);
      ctx->SetLastTag(tag);
      goto message_done;
    }
    ptr = UnknownFieldParse(
        tag,
        _internal_metadata_.mutable_unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(),
        ptr, ctx);
    CHK_(ptr != nullptr);
  }  // while
message_done:
  _impl_._has_bits_.Or(has_bits);
  return ptr;
failure:
  ptr = nullptr;
  goto message_done;
#undef CHK_
}

uint8_t* ParaInflationLayer::_InternalSerialize(
    uint8_t* target, ::PROTOBUF_NAMESPACE_ID::io::EpsCopyOutputStream* stream) const {
  // @@protoc_insertion_point(serialize_to_array_start:roborts_costmap.ParaInflationLayer)
  uint32_t cached_has_bits = 0;
  (void) cached_has_bits;

  cached_has_bits = _impl_._has_bits_[0];
  // required double inflation_radius = 1;
  if (cached_has_bits & 0x00000001u) {
    target = stream->EnsureSpace(target);
    target = ::_pbi::WireFormatLite::WriteDoubleToArray(1, this->_internal_inflation_radius(), target);
  }

  // required double cost_scaling_factor = 2;
  if (cached_has_bits & 0x00000002u) {
    target = stream->EnsureSpace(target);
    target = ::_pbi::WireFormatLite::WriteDoubleToArray(2, this->_internal_cost_scaling_factor(), target);
  }

  // required bool is_debug = 3;
  if (cached_has_bits & 0x00000004u) {
    target = stream->EnsureSpace(target);
    target = ::_pbi::WireFormatLite::WriteBoolToArray(3, this->_internal_is_debug(), target);
  }

  // required bool is_raw_rosmessage = 4;
  if (cached_has_bits & 0x00000008u) {
    target = stream->EnsureSpace(target);
    target = ::_pbi::WireFormatLite::WriteBoolToArray(4, this->_internal_is_raw_rosmessage(), target);
  }

  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    target = ::_pbi::WireFormat::InternalSerializeUnknownFieldsToArray(
        _internal_metadata_.unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(::PROTOBUF_NAMESPACE_ID::UnknownFieldSet::default_instance), target, stream);
  }
  // @@protoc_insertion_point(serialize_to_array_end:roborts_costmap.ParaInflationLayer)
  return target;
}

size_t ParaInflationLayer::RequiredFieldsByteSizeFallback() const {
// @@protoc_insertion_point(required_fields_byte_size_fallback_start:roborts_costmap.ParaInflationLayer)
  size_t total_size = 0;

  if (_internal_has_inflation_radius()) {
    // required double inflation_radius = 1;
    total_size += 1 + 8;
  }

  if (_internal_has_cost_scaling_factor()) {
    // required double cost_scaling_factor = 2;
    total_size += 1 + 8;
  }

  if (_internal_has_is_debug()) {
    // required bool is_debug = 3;
    total_size += 1 + 1;
  }

  if (_internal_has_is_raw_rosmessage()) {
    // required bool is_raw_rosmessage = 4;
    total_size += 1 + 1;
  }

  return total_size;
}
size_t ParaInflationLayer::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:roborts_costmap.ParaInflationLayer)
  size_t total_size = 0;

  if (((_impl_._has_bits_[0] & 0x0000000f) ^ 0x0000000f) == 0) {  // All required fields are present.
    // required double inflation_radius = 1;
    total_size += 1 + 8;

    // required double cost_scaling_factor = 2;
    total_size += 1 + 8;

    // required bool is_debug = 3;
    total_size += 1 + 1;

    // required bool is_raw_rosmessage = 4;
    total_size += 1 + 1;

  } else {
    total_size += RequiredFieldsByteSizeFallback();
  }
  uint32_t cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  return MaybeComputeUnknownFieldsSize(total_size, &_impl_._cached_size_);
}

const ::PROTOBUF_NAMESPACE_ID::Message::ClassData ParaInflationLayer::_class_data_ = {
    ::PROTOBUF_NAMESPACE_ID::Message::CopyWithSourceCheck,
    ParaInflationLayer::MergeImpl
};
const ::PROTOBUF_NAMESPACE_ID::Message::ClassData*ParaInflationLayer::GetClassData() const { return &_class_data_; }


void ParaInflationLayer::MergeImpl(::PROTOBUF_NAMESPACE_ID::Message& to_msg, const ::PROTOBUF_NAMESPACE_ID::Message& from_msg) {
  auto* const _this = static_cast<ParaInflationLayer*>(&to_msg);
  auto& from = static_cast<const ParaInflationLayer&>(from_msg);
  // @@protoc_insertion_point(class_specific_merge_from_start:roborts_costmap.ParaInflationLayer)
  GOOGLE_DCHECK_NE(&from, _this);
  uint32_t cached_has_bits = 0;
  (void) cached_has_bits;

  cached_has_bits = from._impl_._has_bits_[0];
  if (cached_has_bits & 0x0000000fu) {
    if (cached_has_bits & 0x00000001u) {
      _this->_impl_.inflation_radius_ = from._impl_.inflation_radius_;
    }
    if (cached_has_bits & 0x00000002u) {
      _this->_impl_.cost_scaling_factor_ = from._impl_.cost_scaling_factor_;
    }
    if (cached_has_bits & 0x00000004u) {
      _this->_impl_.is_debug_ = from._impl_.is_debug_;
    }
    if (cached_has_bits & 0x00000008u) {
      _this->_impl_.is_raw_rosmessage_ = from._impl_.is_raw_rosmessage_;
    }
    _this->_impl_._has_bits_[0] |= cached_has_bits;
  }
  _this->_internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
}

void ParaInflationLayer::CopyFrom(const ParaInflationLayer& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:roborts_costmap.ParaInflationLayer)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool ParaInflationLayer::IsInitialized() const {
  if (_Internal::MissingRequiredFields(_impl_._has_bits_)) return false;
  return true;
}

void ParaInflationLayer::InternalSwap(ParaInflationLayer* other) {
  using std::swap;
  _internal_metadata_.InternalSwap(&other->_internal_metadata_);
  swap(_impl_._has_bits_[0], other->_impl_._has_bits_[0]);
  ::PROTOBUF_NAMESPACE_ID::internal::memswap<
      PROTOBUF_FIELD_OFFSET(ParaInflationLayer, _impl_.is_raw_rosmessage_)
      + sizeof(ParaInflationLayer::_impl_.is_raw_rosmessage_)
      - PROTOBUF_FIELD_OFFSET(ParaInflationLayer, _impl_.inflation_radius_)>(
          reinterpret_cast<char*>(&_impl_.inflation_radius_),
          reinterpret_cast<char*>(&other->_impl_.inflation_radius_));
}

::PROTOBUF_NAMESPACE_ID::Metadata ParaInflationLayer::GetMetadata() const {
  return ::_pbi::AssignDescriptors(
      &descriptor_table_inflation_5flayer_5fsetting_2eproto_getter, &descriptor_table_inflation_5flayer_5fsetting_2eproto_once,
      file_level_metadata_inflation_5flayer_5fsetting_2eproto[0]);
}

// @@protoc_insertion_point(namespace_scope)
}  // namespace roborts_costmap
PROTOBUF_NAMESPACE_OPEN
template<> PROTOBUF_NOINLINE ::roborts_costmap::ParaInflationLayer*
Arena::CreateMaybeMessage< ::roborts_costmap::ParaInflationLayer >(Arena* arena) {
  return Arena::CreateMessageInternal< ::roborts_costmap::ParaInflationLayer >(arena);
}
PROTOBUF_NAMESPACE_CLOSE

// @@protoc_insertion_point(global_scope)
#include <google/protobuf/port_undef.inc>
