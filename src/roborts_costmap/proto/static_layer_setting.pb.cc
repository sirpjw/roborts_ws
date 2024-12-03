// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: static_layer_setting.proto

#include "static_layer_setting.pb.h"

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
PROTOBUF_CONSTEXPR ParaStaticLayer::ParaStaticLayer(
    ::_pbi::ConstantInitialized): _impl_{
    /*decltype(_impl_._has_bits_)*/{}
  , /*decltype(_impl_._cached_size_)*/{}
  , /*decltype(_impl_.topic_name_)*/{&::_pbi::fixed_address_empty_string, ::_pbi::ConstantInitialized{}}
  , /*decltype(_impl_.first_map_only_)*/false
  , /*decltype(_impl_.subscribe_to_updates_)*/false
  , /*decltype(_impl_.track_unknown_space_)*/false
  , /*decltype(_impl_.use_maximum_)*/false
  , /*decltype(_impl_.unknown_cost_value_)*/0
  , /*decltype(_impl_.lethal_threshold_)*/0
  , /*decltype(_impl_.trinary_map_)*/false
  , /*decltype(_impl_.is_raw_rosmessage_)*/false
  , /*decltype(_impl_.is_debug_)*/false} {}
struct ParaStaticLayerDefaultTypeInternal {
  PROTOBUF_CONSTEXPR ParaStaticLayerDefaultTypeInternal()
      : _instance(::_pbi::ConstantInitialized{}) {}
  ~ParaStaticLayerDefaultTypeInternal() {}
  union {
    ParaStaticLayer _instance;
  };
};
PROTOBUF_ATTRIBUTE_NO_DESTROY PROTOBUF_CONSTINIT PROTOBUF_ATTRIBUTE_INIT_PRIORITY1 ParaStaticLayerDefaultTypeInternal _ParaStaticLayer_default_instance_;
}  // namespace roborts_costmap
static ::_pb::Metadata file_level_metadata_static_5flayer_5fsetting_2eproto[1];
static constexpr ::_pb::EnumDescriptor const** file_level_enum_descriptors_static_5flayer_5fsetting_2eproto = nullptr;
static constexpr ::_pb::ServiceDescriptor const** file_level_service_descriptors_static_5flayer_5fsetting_2eproto = nullptr;

const uint32_t TableStruct_static_5flayer_5fsetting_2eproto::offsets[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaStaticLayer, _impl_._has_bits_),
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaStaticLayer, _internal_metadata_),
  ~0u,  // no _extensions_
  ~0u,  // no _oneof_case_
  ~0u,  // no _weak_field_map_
  ~0u,  // no _inlined_string_donated_
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaStaticLayer, _impl_.first_map_only_),
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaStaticLayer, _impl_.subscribe_to_updates_),
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaStaticLayer, _impl_.track_unknown_space_),
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaStaticLayer, _impl_.use_maximum_),
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaStaticLayer, _impl_.unknown_cost_value_),
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaStaticLayer, _impl_.trinary_map_),
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaStaticLayer, _impl_.lethal_threshold_),
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaStaticLayer, _impl_.topic_name_),
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaStaticLayer, _impl_.is_raw_rosmessage_),
  PROTOBUF_FIELD_OFFSET(::roborts_costmap::ParaStaticLayer, _impl_.is_debug_),
  1,
  2,
  3,
  4,
  5,
  7,
  6,
  0,
  8,
  9,
};
static const ::_pbi::MigrationSchema schemas[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
  { 0, 16, -1, sizeof(::roborts_costmap::ParaStaticLayer)},
};

static const ::_pb::Message* const file_default_instances[] = {
  &::roborts_costmap::_ParaStaticLayer_default_instance_._instance,
};

const char descriptor_table_protodef_static_5flayer_5fsetting_2eproto[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) =
  "\n\032static_layer_setting.proto\022\017roborts_co"
  "stmap\"\205\002\n\017ParaStaticLayer\022\026\n\016first_map_o"
  "nly\030\001 \002(\010\022\034\n\024subscribe_to_updates\030\002 \002(\010\022"
  "\033\n\023track_unknown_space\030\003 \002(\010\022\023\n\013use_maxi"
  "mum\030\004 \002(\010\022\032\n\022unknown_cost_value\030\005 \002(\005\022\023\n"
  "\013trinary_map\030\006 \002(\010\022\030\n\020lethal_threshold\030\007"
  " \002(\005\022\022\n\ntopic_name\030\010 \002(\t\022\031\n\021is_raw_rosme"
  "ssage\030\t \002(\010\022\020\n\010is_debug\030\n \002(\010"
  ;
static ::_pbi::once_flag descriptor_table_static_5flayer_5fsetting_2eproto_once;
const ::_pbi::DescriptorTable descriptor_table_static_5flayer_5fsetting_2eproto = {
    false, false, 309, descriptor_table_protodef_static_5flayer_5fsetting_2eproto,
    "static_layer_setting.proto",
    &descriptor_table_static_5flayer_5fsetting_2eproto_once, nullptr, 0, 1,
    schemas, file_default_instances, TableStruct_static_5flayer_5fsetting_2eproto::offsets,
    file_level_metadata_static_5flayer_5fsetting_2eproto, file_level_enum_descriptors_static_5flayer_5fsetting_2eproto,
    file_level_service_descriptors_static_5flayer_5fsetting_2eproto,
};
PROTOBUF_ATTRIBUTE_WEAK const ::_pbi::DescriptorTable* descriptor_table_static_5flayer_5fsetting_2eproto_getter() {
  return &descriptor_table_static_5flayer_5fsetting_2eproto;
}

// Force running AddDescriptors() at dynamic initialization time.
PROTOBUF_ATTRIBUTE_INIT_PRIORITY2 static ::_pbi::AddDescriptorsRunner dynamic_init_dummy_static_5flayer_5fsetting_2eproto(&descriptor_table_static_5flayer_5fsetting_2eproto);
namespace roborts_costmap {

// ===================================================================

class ParaStaticLayer::_Internal {
 public:
  using HasBits = decltype(std::declval<ParaStaticLayer>()._impl_._has_bits_);
  static void set_has_first_map_only(HasBits* has_bits) {
    (*has_bits)[0] |= 2u;
  }
  static void set_has_subscribe_to_updates(HasBits* has_bits) {
    (*has_bits)[0] |= 4u;
  }
  static void set_has_track_unknown_space(HasBits* has_bits) {
    (*has_bits)[0] |= 8u;
  }
  static void set_has_use_maximum(HasBits* has_bits) {
    (*has_bits)[0] |= 16u;
  }
  static void set_has_unknown_cost_value(HasBits* has_bits) {
    (*has_bits)[0] |= 32u;
  }
  static void set_has_trinary_map(HasBits* has_bits) {
    (*has_bits)[0] |= 128u;
  }
  static void set_has_lethal_threshold(HasBits* has_bits) {
    (*has_bits)[0] |= 64u;
  }
  static void set_has_topic_name(HasBits* has_bits) {
    (*has_bits)[0] |= 1u;
  }
  static void set_has_is_raw_rosmessage(HasBits* has_bits) {
    (*has_bits)[0] |= 256u;
  }
  static void set_has_is_debug(HasBits* has_bits) {
    (*has_bits)[0] |= 512u;
  }
  static bool MissingRequiredFields(const HasBits& has_bits) {
    return ((has_bits[0] & 0x000003ff) ^ 0x000003ff) != 0;
  }
};

ParaStaticLayer::ParaStaticLayer(::PROTOBUF_NAMESPACE_ID::Arena* arena,
                         bool is_message_owned)
  : ::PROTOBUF_NAMESPACE_ID::Message(arena, is_message_owned) {
  SharedCtor(arena, is_message_owned);
  // @@protoc_insertion_point(arena_constructor:roborts_costmap.ParaStaticLayer)
}
ParaStaticLayer::ParaStaticLayer(const ParaStaticLayer& from)
  : ::PROTOBUF_NAMESPACE_ID::Message() {
  ParaStaticLayer* const _this = this; (void)_this;
  new (&_impl_) Impl_{
      decltype(_impl_._has_bits_){from._impl_._has_bits_}
    , /*decltype(_impl_._cached_size_)*/{}
    , decltype(_impl_.topic_name_){}
    , decltype(_impl_.first_map_only_){}
    , decltype(_impl_.subscribe_to_updates_){}
    , decltype(_impl_.track_unknown_space_){}
    , decltype(_impl_.use_maximum_){}
    , decltype(_impl_.unknown_cost_value_){}
    , decltype(_impl_.lethal_threshold_){}
    , decltype(_impl_.trinary_map_){}
    , decltype(_impl_.is_raw_rosmessage_){}
    , decltype(_impl_.is_debug_){}};

  _internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
  _impl_.topic_name_.InitDefault();
  #ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
    _impl_.topic_name_.Set("", GetArenaForAllocation());
  #endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  if (from._internal_has_topic_name()) {
    _this->_impl_.topic_name_.Set(from._internal_topic_name(), 
      _this->GetArenaForAllocation());
  }
  ::memcpy(&_impl_.first_map_only_, &from._impl_.first_map_only_,
    static_cast<size_t>(reinterpret_cast<char*>(&_impl_.is_debug_) -
    reinterpret_cast<char*>(&_impl_.first_map_only_)) + sizeof(_impl_.is_debug_));
  // @@protoc_insertion_point(copy_constructor:roborts_costmap.ParaStaticLayer)
}

inline void ParaStaticLayer::SharedCtor(
    ::_pb::Arena* arena, bool is_message_owned) {
  (void)arena;
  (void)is_message_owned;
  new (&_impl_) Impl_{
      decltype(_impl_._has_bits_){}
    , /*decltype(_impl_._cached_size_)*/{}
    , decltype(_impl_.topic_name_){}
    , decltype(_impl_.first_map_only_){false}
    , decltype(_impl_.subscribe_to_updates_){false}
    , decltype(_impl_.track_unknown_space_){false}
    , decltype(_impl_.use_maximum_){false}
    , decltype(_impl_.unknown_cost_value_){0}
    , decltype(_impl_.lethal_threshold_){0}
    , decltype(_impl_.trinary_map_){false}
    , decltype(_impl_.is_raw_rosmessage_){false}
    , decltype(_impl_.is_debug_){false}
  };
  _impl_.topic_name_.InitDefault();
  #ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
    _impl_.topic_name_.Set("", GetArenaForAllocation());
  #endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
}

ParaStaticLayer::~ParaStaticLayer() {
  // @@protoc_insertion_point(destructor:roborts_costmap.ParaStaticLayer)
  if (auto *arena = _internal_metadata_.DeleteReturnArena<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>()) {
  (void)arena;
    return;
  }
  SharedDtor();
}

inline void ParaStaticLayer::SharedDtor() {
  GOOGLE_DCHECK(GetArenaForAllocation() == nullptr);
  _impl_.topic_name_.Destroy();
}

void ParaStaticLayer::SetCachedSize(int size) const {
  _impl_._cached_size_.Set(size);
}

void ParaStaticLayer::Clear() {
// @@protoc_insertion_point(message_clear_start:roborts_costmap.ParaStaticLayer)
  uint32_t cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  cached_has_bits = _impl_._has_bits_[0];
  if (cached_has_bits & 0x00000001u) {
    _impl_.topic_name_.ClearNonDefaultToEmpty();
  }
  if (cached_has_bits & 0x000000feu) {
    ::memset(&_impl_.first_map_only_, 0, static_cast<size_t>(
        reinterpret_cast<char*>(&_impl_.trinary_map_) -
        reinterpret_cast<char*>(&_impl_.first_map_only_)) + sizeof(_impl_.trinary_map_));
  }
  if (cached_has_bits & 0x00000300u) {
    ::memset(&_impl_.is_raw_rosmessage_, 0, static_cast<size_t>(
        reinterpret_cast<char*>(&_impl_.is_debug_) -
        reinterpret_cast<char*>(&_impl_.is_raw_rosmessage_)) + sizeof(_impl_.is_debug_));
  }
  _impl_._has_bits_.Clear();
  _internal_metadata_.Clear<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>();
}

const char* ParaStaticLayer::_InternalParse(const char* ptr, ::_pbi::ParseContext* ctx) {
#define CHK_(x) if (PROTOBUF_PREDICT_FALSE(!(x))) goto failure
  _Internal::HasBits has_bits{};
  while (!ctx->Done(&ptr)) {
    uint32_t tag;
    ptr = ::_pbi::ReadTag(ptr, &tag);
    switch (tag >> 3) {
      // required bool first_map_only = 1;
      case 1:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 8)) {
          _Internal::set_has_first_map_only(&has_bits);
          _impl_.first_map_only_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint64(&ptr);
          CHK_(ptr);
        } else
          goto handle_unusual;
        continue;
      // required bool subscribe_to_updates = 2;
      case 2:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 16)) {
          _Internal::set_has_subscribe_to_updates(&has_bits);
          _impl_.subscribe_to_updates_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint64(&ptr);
          CHK_(ptr);
        } else
          goto handle_unusual;
        continue;
      // required bool track_unknown_space = 3;
      case 3:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 24)) {
          _Internal::set_has_track_unknown_space(&has_bits);
          _impl_.track_unknown_space_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint64(&ptr);
          CHK_(ptr);
        } else
          goto handle_unusual;
        continue;
      // required bool use_maximum = 4;
      case 4:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 32)) {
          _Internal::set_has_use_maximum(&has_bits);
          _impl_.use_maximum_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint64(&ptr);
          CHK_(ptr);
        } else
          goto handle_unusual;
        continue;
      // required int32 unknown_cost_value = 5;
      case 5:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 40)) {
          _Internal::set_has_unknown_cost_value(&has_bits);
          _impl_.unknown_cost_value_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint32(&ptr);
          CHK_(ptr);
        } else
          goto handle_unusual;
        continue;
      // required bool trinary_map = 6;
      case 6:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 48)) {
          _Internal::set_has_trinary_map(&has_bits);
          _impl_.trinary_map_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint64(&ptr);
          CHK_(ptr);
        } else
          goto handle_unusual;
        continue;
      // required int32 lethal_threshold = 7;
      case 7:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 56)) {
          _Internal::set_has_lethal_threshold(&has_bits);
          _impl_.lethal_threshold_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint32(&ptr);
          CHK_(ptr);
        } else
          goto handle_unusual;
        continue;
      // required string topic_name = 8;
      case 8:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 66)) {
          auto str = _internal_mutable_topic_name();
          ptr = ::_pbi::InlineGreedyStringParser(str, ptr, ctx);
          CHK_(ptr);
          #ifndef NDEBUG
          ::_pbi::VerifyUTF8(str, "roborts_costmap.ParaStaticLayer.topic_name");
          #endif  // !NDEBUG
        } else
          goto handle_unusual;
        continue;
      // required bool is_raw_rosmessage = 9;
      case 9:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 72)) {
          _Internal::set_has_is_raw_rosmessage(&has_bits);
          _impl_.is_raw_rosmessage_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint64(&ptr);
          CHK_(ptr);
        } else
          goto handle_unusual;
        continue;
      // required bool is_debug = 10;
      case 10:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 80)) {
          _Internal::set_has_is_debug(&has_bits);
          _impl_.is_debug_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint64(&ptr);
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

uint8_t* ParaStaticLayer::_InternalSerialize(
    uint8_t* target, ::PROTOBUF_NAMESPACE_ID::io::EpsCopyOutputStream* stream) const {
  // @@protoc_insertion_point(serialize_to_array_start:roborts_costmap.ParaStaticLayer)
  uint32_t cached_has_bits = 0;
  (void) cached_has_bits;

  cached_has_bits = _impl_._has_bits_[0];
  // required bool first_map_only = 1;
  if (cached_has_bits & 0x00000002u) {
    target = stream->EnsureSpace(target);
    target = ::_pbi::WireFormatLite::WriteBoolToArray(1, this->_internal_first_map_only(), target);
  }

  // required bool subscribe_to_updates = 2;
  if (cached_has_bits & 0x00000004u) {
    target = stream->EnsureSpace(target);
    target = ::_pbi::WireFormatLite::WriteBoolToArray(2, this->_internal_subscribe_to_updates(), target);
  }

  // required bool track_unknown_space = 3;
  if (cached_has_bits & 0x00000008u) {
    target = stream->EnsureSpace(target);
    target = ::_pbi::WireFormatLite::WriteBoolToArray(3, this->_internal_track_unknown_space(), target);
  }

  // required bool use_maximum = 4;
  if (cached_has_bits & 0x00000010u) {
    target = stream->EnsureSpace(target);
    target = ::_pbi::WireFormatLite::WriteBoolToArray(4, this->_internal_use_maximum(), target);
  }

  // required int32 unknown_cost_value = 5;
  if (cached_has_bits & 0x00000020u) {
    target = stream->EnsureSpace(target);
    target = ::_pbi::WireFormatLite::WriteInt32ToArray(5, this->_internal_unknown_cost_value(), target);
  }

  // required bool trinary_map = 6;
  if (cached_has_bits & 0x00000080u) {
    target = stream->EnsureSpace(target);
    target = ::_pbi::WireFormatLite::WriteBoolToArray(6, this->_internal_trinary_map(), target);
  }

  // required int32 lethal_threshold = 7;
  if (cached_has_bits & 0x00000040u) {
    target = stream->EnsureSpace(target);
    target = ::_pbi::WireFormatLite::WriteInt32ToArray(7, this->_internal_lethal_threshold(), target);
  }

  // required string topic_name = 8;
  if (cached_has_bits & 0x00000001u) {
    ::PROTOBUF_NAMESPACE_ID::internal::WireFormat::VerifyUTF8StringNamedField(
      this->_internal_topic_name().data(), static_cast<int>(this->_internal_topic_name().length()),
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormat::SERIALIZE,
      "roborts_costmap.ParaStaticLayer.topic_name");
    target = stream->WriteStringMaybeAliased(
        8, this->_internal_topic_name(), target);
  }

  // required bool is_raw_rosmessage = 9;
  if (cached_has_bits & 0x00000100u) {
    target = stream->EnsureSpace(target);
    target = ::_pbi::WireFormatLite::WriteBoolToArray(9, this->_internal_is_raw_rosmessage(), target);
  }

  // required bool is_debug = 10;
  if (cached_has_bits & 0x00000200u) {
    target = stream->EnsureSpace(target);
    target = ::_pbi::WireFormatLite::WriteBoolToArray(10, this->_internal_is_debug(), target);
  }

  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    target = ::_pbi::WireFormat::InternalSerializeUnknownFieldsToArray(
        _internal_metadata_.unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(::PROTOBUF_NAMESPACE_ID::UnknownFieldSet::default_instance), target, stream);
  }
  // @@protoc_insertion_point(serialize_to_array_end:roborts_costmap.ParaStaticLayer)
  return target;
}

size_t ParaStaticLayer::RequiredFieldsByteSizeFallback() const {
// @@protoc_insertion_point(required_fields_byte_size_fallback_start:roborts_costmap.ParaStaticLayer)
  size_t total_size = 0;

  if (_internal_has_topic_name()) {
    // required string topic_name = 8;
    total_size += 1 +
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::StringSize(
        this->_internal_topic_name());
  }

  if (_internal_has_first_map_only()) {
    // required bool first_map_only = 1;
    total_size += 1 + 1;
  }

  if (_internal_has_subscribe_to_updates()) {
    // required bool subscribe_to_updates = 2;
    total_size += 1 + 1;
  }

  if (_internal_has_track_unknown_space()) {
    // required bool track_unknown_space = 3;
    total_size += 1 + 1;
  }

  if (_internal_has_use_maximum()) {
    // required bool use_maximum = 4;
    total_size += 1 + 1;
  }

  if (_internal_has_unknown_cost_value()) {
    // required int32 unknown_cost_value = 5;
    total_size += ::_pbi::WireFormatLite::Int32SizePlusOne(this->_internal_unknown_cost_value());
  }

  if (_internal_has_lethal_threshold()) {
    // required int32 lethal_threshold = 7;
    total_size += ::_pbi::WireFormatLite::Int32SizePlusOne(this->_internal_lethal_threshold());
  }

  if (_internal_has_trinary_map()) {
    // required bool trinary_map = 6;
    total_size += 1 + 1;
  }

  if (_internal_has_is_raw_rosmessage()) {
    // required bool is_raw_rosmessage = 9;
    total_size += 1 + 1;
  }

  if (_internal_has_is_debug()) {
    // required bool is_debug = 10;
    total_size += 1 + 1;
  }

  return total_size;
}
size_t ParaStaticLayer::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:roborts_costmap.ParaStaticLayer)
  size_t total_size = 0;

  if (((_impl_._has_bits_[0] & 0x000003ff) ^ 0x000003ff) == 0) {  // All required fields are present.
    // required string topic_name = 8;
    total_size += 1 +
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::StringSize(
        this->_internal_topic_name());

    // required bool first_map_only = 1;
    total_size += 1 + 1;

    // required bool subscribe_to_updates = 2;
    total_size += 1 + 1;

    // required bool track_unknown_space = 3;
    total_size += 1 + 1;

    // required bool use_maximum = 4;
    total_size += 1 + 1;

    // required int32 unknown_cost_value = 5;
    total_size += ::_pbi::WireFormatLite::Int32SizePlusOne(this->_internal_unknown_cost_value());

    // required int32 lethal_threshold = 7;
    total_size += ::_pbi::WireFormatLite::Int32SizePlusOne(this->_internal_lethal_threshold());

    // required bool trinary_map = 6;
    total_size += 1 + 1;

    // required bool is_raw_rosmessage = 9;
    total_size += 1 + 1;

    // required bool is_debug = 10;
    total_size += 1 + 1;

  } else {
    total_size += RequiredFieldsByteSizeFallback();
  }
  uint32_t cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  return MaybeComputeUnknownFieldsSize(total_size, &_impl_._cached_size_);
}

const ::PROTOBUF_NAMESPACE_ID::Message::ClassData ParaStaticLayer::_class_data_ = {
    ::PROTOBUF_NAMESPACE_ID::Message::CopyWithSourceCheck,
    ParaStaticLayer::MergeImpl
};
const ::PROTOBUF_NAMESPACE_ID::Message::ClassData*ParaStaticLayer::GetClassData() const { return &_class_data_; }


void ParaStaticLayer::MergeImpl(::PROTOBUF_NAMESPACE_ID::Message& to_msg, const ::PROTOBUF_NAMESPACE_ID::Message& from_msg) {
  auto* const _this = static_cast<ParaStaticLayer*>(&to_msg);
  auto& from = static_cast<const ParaStaticLayer&>(from_msg);
  // @@protoc_insertion_point(class_specific_merge_from_start:roborts_costmap.ParaStaticLayer)
  GOOGLE_DCHECK_NE(&from, _this);
  uint32_t cached_has_bits = 0;
  (void) cached_has_bits;

  cached_has_bits = from._impl_._has_bits_[0];
  if (cached_has_bits & 0x000000ffu) {
    if (cached_has_bits & 0x00000001u) {
      _this->_internal_set_topic_name(from._internal_topic_name());
    }
    if (cached_has_bits & 0x00000002u) {
      _this->_impl_.first_map_only_ = from._impl_.first_map_only_;
    }
    if (cached_has_bits & 0x00000004u) {
      _this->_impl_.subscribe_to_updates_ = from._impl_.subscribe_to_updates_;
    }
    if (cached_has_bits & 0x00000008u) {
      _this->_impl_.track_unknown_space_ = from._impl_.track_unknown_space_;
    }
    if (cached_has_bits & 0x00000010u) {
      _this->_impl_.use_maximum_ = from._impl_.use_maximum_;
    }
    if (cached_has_bits & 0x00000020u) {
      _this->_impl_.unknown_cost_value_ = from._impl_.unknown_cost_value_;
    }
    if (cached_has_bits & 0x00000040u) {
      _this->_impl_.lethal_threshold_ = from._impl_.lethal_threshold_;
    }
    if (cached_has_bits & 0x00000080u) {
      _this->_impl_.trinary_map_ = from._impl_.trinary_map_;
    }
    _this->_impl_._has_bits_[0] |= cached_has_bits;
  }
  if (cached_has_bits & 0x00000300u) {
    if (cached_has_bits & 0x00000100u) {
      _this->_impl_.is_raw_rosmessage_ = from._impl_.is_raw_rosmessage_;
    }
    if (cached_has_bits & 0x00000200u) {
      _this->_impl_.is_debug_ = from._impl_.is_debug_;
    }
    _this->_impl_._has_bits_[0] |= cached_has_bits;
  }
  _this->_internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
}

void ParaStaticLayer::CopyFrom(const ParaStaticLayer& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:roborts_costmap.ParaStaticLayer)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool ParaStaticLayer::IsInitialized() const {
  if (_Internal::MissingRequiredFields(_impl_._has_bits_)) return false;
  return true;
}

void ParaStaticLayer::InternalSwap(ParaStaticLayer* other) {
  using std::swap;
  auto* lhs_arena = GetArenaForAllocation();
  auto* rhs_arena = other->GetArenaForAllocation();
  _internal_metadata_.InternalSwap(&other->_internal_metadata_);
  swap(_impl_._has_bits_[0], other->_impl_._has_bits_[0]);
  ::PROTOBUF_NAMESPACE_ID::internal::ArenaStringPtr::InternalSwap(
      &_impl_.topic_name_, lhs_arena,
      &other->_impl_.topic_name_, rhs_arena
  );
  ::PROTOBUF_NAMESPACE_ID::internal::memswap<
      PROTOBUF_FIELD_OFFSET(ParaStaticLayer, _impl_.is_debug_)
      + sizeof(ParaStaticLayer::_impl_.is_debug_)
      - PROTOBUF_FIELD_OFFSET(ParaStaticLayer, _impl_.first_map_only_)>(
          reinterpret_cast<char*>(&_impl_.first_map_only_),
          reinterpret_cast<char*>(&other->_impl_.first_map_only_));
}

::PROTOBUF_NAMESPACE_ID::Metadata ParaStaticLayer::GetMetadata() const {
  return ::_pbi::AssignDescriptors(
      &descriptor_table_static_5flayer_5fsetting_2eproto_getter, &descriptor_table_static_5flayer_5fsetting_2eproto_once,
      file_level_metadata_static_5flayer_5fsetting_2eproto[0]);
}

// @@protoc_insertion_point(namespace_scope)
}  // namespace roborts_costmap
PROTOBUF_NAMESPACE_OPEN
template<> PROTOBUF_NOINLINE ::roborts_costmap::ParaStaticLayer*
Arena::CreateMaybeMessage< ::roborts_costmap::ParaStaticLayer >(Arena* arena) {
  return Arena::CreateMessageInternal< ::roborts_costmap::ParaStaticLayer >(arena);
}
PROTOBUF_NAMESPACE_CLOSE

// @@protoc_insertion_point(global_scope)
#include <google/protobuf/port_undef.inc>