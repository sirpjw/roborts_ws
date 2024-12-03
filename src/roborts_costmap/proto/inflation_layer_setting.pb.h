// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: inflation_layer_setting.proto

#ifndef GOOGLE_PROTOBUF_INCLUDED_inflation_5flayer_5fsetting_2eproto
#define GOOGLE_PROTOBUF_INCLUDED_inflation_5flayer_5fsetting_2eproto

#include <limits>
#include <string>

#include <google/protobuf/port_def.inc>
#if PROTOBUF_VERSION < 3021000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers. Please update
#error your headers.
#endif
#if 3021006 < PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers. Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/port_undef.inc>
#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/arena.h>
#include <google/protobuf/arenastring.h>
#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/metadata_lite.h>
#include <google/protobuf/generated_message_reflection.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>  // IWYU pragma: export
#include <google/protobuf/extension_set.h>  // IWYU pragma: export
#include <google/protobuf/unknown_field_set.h>
// @@protoc_insertion_point(includes)
#include <google/protobuf/port_def.inc>
#define PROTOBUF_INTERNAL_EXPORT_inflation_5flayer_5fsetting_2eproto
PROTOBUF_NAMESPACE_OPEN
namespace internal {
class AnyMetadata;
}  // namespace internal
PROTOBUF_NAMESPACE_CLOSE

// Internal implementation detail -- do not use these members.
struct TableStruct_inflation_5flayer_5fsetting_2eproto {
  static const uint32_t offsets[];
};
extern const ::PROTOBUF_NAMESPACE_ID::internal::DescriptorTable descriptor_table_inflation_5flayer_5fsetting_2eproto;
namespace roborts_costmap {
class ParaInflationLayer;
struct ParaInflationLayerDefaultTypeInternal;
extern ParaInflationLayerDefaultTypeInternal _ParaInflationLayer_default_instance_;
}  // namespace roborts_costmap
PROTOBUF_NAMESPACE_OPEN
template<> ::roborts_costmap::ParaInflationLayer* Arena::CreateMaybeMessage<::roborts_costmap::ParaInflationLayer>(Arena*);
PROTOBUF_NAMESPACE_CLOSE
namespace roborts_costmap {

// ===================================================================

class ParaInflationLayer final :
    public ::PROTOBUF_NAMESPACE_ID::Message /* @@protoc_insertion_point(class_definition:roborts_costmap.ParaInflationLayer) */ {
 public:
  inline ParaInflationLayer() : ParaInflationLayer(nullptr) {}
  ~ParaInflationLayer() override;
  explicit PROTOBUF_CONSTEXPR ParaInflationLayer(::PROTOBUF_NAMESPACE_ID::internal::ConstantInitialized);

  ParaInflationLayer(const ParaInflationLayer& from);
  ParaInflationLayer(ParaInflationLayer&& from) noexcept
    : ParaInflationLayer() {
    *this = ::std::move(from);
  }

  inline ParaInflationLayer& operator=(const ParaInflationLayer& from) {
    CopyFrom(from);
    return *this;
  }
  inline ParaInflationLayer& operator=(ParaInflationLayer&& from) noexcept {
    if (this == &from) return *this;
    if (GetOwningArena() == from.GetOwningArena()
  #ifdef PROTOBUF_FORCE_COPY_IN_MOVE
        && GetOwningArena() != nullptr
  #endif  // !PROTOBUF_FORCE_COPY_IN_MOVE
    ) {
      InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }

  inline const ::PROTOBUF_NAMESPACE_ID::UnknownFieldSet& unknown_fields() const {
    return _internal_metadata_.unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(::PROTOBUF_NAMESPACE_ID::UnknownFieldSet::default_instance);
  }
  inline ::PROTOBUF_NAMESPACE_ID::UnknownFieldSet* mutable_unknown_fields() {
    return _internal_metadata_.mutable_unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>();
  }

  static const ::PROTOBUF_NAMESPACE_ID::Descriptor* descriptor() {
    return GetDescriptor();
  }
  static const ::PROTOBUF_NAMESPACE_ID::Descriptor* GetDescriptor() {
    return default_instance().GetMetadata().descriptor;
  }
  static const ::PROTOBUF_NAMESPACE_ID::Reflection* GetReflection() {
    return default_instance().GetMetadata().reflection;
  }
  static const ParaInflationLayer& default_instance() {
    return *internal_default_instance();
  }
  static inline const ParaInflationLayer* internal_default_instance() {
    return reinterpret_cast<const ParaInflationLayer*>(
               &_ParaInflationLayer_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    0;

  friend void swap(ParaInflationLayer& a, ParaInflationLayer& b) {
    a.Swap(&b);
  }
  inline void Swap(ParaInflationLayer* other) {
    if (other == this) return;
  #ifdef PROTOBUF_FORCE_COPY_IN_SWAP
    if (GetOwningArena() != nullptr &&
        GetOwningArena() == other->GetOwningArena()) {
   #else  // PROTOBUF_FORCE_COPY_IN_SWAP
    if (GetOwningArena() == other->GetOwningArena()) {
  #endif  // !PROTOBUF_FORCE_COPY_IN_SWAP
      InternalSwap(other);
    } else {
      ::PROTOBUF_NAMESPACE_ID::internal::GenericSwap(this, other);
    }
  }
  void UnsafeArenaSwap(ParaInflationLayer* other) {
    if (other == this) return;
    GOOGLE_DCHECK(GetOwningArena() == other->GetOwningArena());
    InternalSwap(other);
  }

  // implements Message ----------------------------------------------

  ParaInflationLayer* New(::PROTOBUF_NAMESPACE_ID::Arena* arena = nullptr) const final {
    return CreateMaybeMessage<ParaInflationLayer>(arena);
  }
  using ::PROTOBUF_NAMESPACE_ID::Message::CopyFrom;
  void CopyFrom(const ParaInflationLayer& from);
  using ::PROTOBUF_NAMESPACE_ID::Message::MergeFrom;
  void MergeFrom( const ParaInflationLayer& from) {
    ParaInflationLayer::MergeImpl(*this, from);
  }
  private:
  static void MergeImpl(::PROTOBUF_NAMESPACE_ID::Message& to_msg, const ::PROTOBUF_NAMESPACE_ID::Message& from_msg);
  public:
  PROTOBUF_ATTRIBUTE_REINITIALIZES void Clear() final;
  bool IsInitialized() const final;

  size_t ByteSizeLong() const final;
  const char* _InternalParse(const char* ptr, ::PROTOBUF_NAMESPACE_ID::internal::ParseContext* ctx) final;
  uint8_t* _InternalSerialize(
      uint8_t* target, ::PROTOBUF_NAMESPACE_ID::io::EpsCopyOutputStream* stream) const final;
  int GetCachedSize() const final { return _impl_._cached_size_.Get(); }

  private:
  void SharedCtor(::PROTOBUF_NAMESPACE_ID::Arena* arena, bool is_message_owned);
  void SharedDtor();
  void SetCachedSize(int size) const final;
  void InternalSwap(ParaInflationLayer* other);

  private:
  friend class ::PROTOBUF_NAMESPACE_ID::internal::AnyMetadata;
  static ::PROTOBUF_NAMESPACE_ID::StringPiece FullMessageName() {
    return "roborts_costmap.ParaInflationLayer";
  }
  protected:
  explicit ParaInflationLayer(::PROTOBUF_NAMESPACE_ID::Arena* arena,
                       bool is_message_owned = false);
  public:

  static const ClassData _class_data_;
  const ::PROTOBUF_NAMESPACE_ID::Message::ClassData*GetClassData() const final;

  ::PROTOBUF_NAMESPACE_ID::Metadata GetMetadata() const final;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  enum : int {
    kInflationRadiusFieldNumber = 1,
    kCostScalingFactorFieldNumber = 2,
    kIsDebugFieldNumber = 3,
    kIsRawRosmessageFieldNumber = 4,
  };
  // required double inflation_radius = 1;
  bool has_inflation_radius() const;
  private:
  bool _internal_has_inflation_radius() const;
  public:
  void clear_inflation_radius();
  double inflation_radius() const;
  void set_inflation_radius(double value);
  private:
  double _internal_inflation_radius() const;
  void _internal_set_inflation_radius(double value);
  public:

  // required double cost_scaling_factor = 2;
  bool has_cost_scaling_factor() const;
  private:
  bool _internal_has_cost_scaling_factor() const;
  public:
  void clear_cost_scaling_factor();
  double cost_scaling_factor() const;
  void set_cost_scaling_factor(double value);
  private:
  double _internal_cost_scaling_factor() const;
  void _internal_set_cost_scaling_factor(double value);
  public:

  // required bool is_debug = 3;
  bool has_is_debug() const;
  private:
  bool _internal_has_is_debug() const;
  public:
  void clear_is_debug();
  bool is_debug() const;
  void set_is_debug(bool value);
  private:
  bool _internal_is_debug() const;
  void _internal_set_is_debug(bool value);
  public:

  // required bool is_raw_rosmessage = 4;
  bool has_is_raw_rosmessage() const;
  private:
  bool _internal_has_is_raw_rosmessage() const;
  public:
  void clear_is_raw_rosmessage();
  bool is_raw_rosmessage() const;
  void set_is_raw_rosmessage(bool value);
  private:
  bool _internal_is_raw_rosmessage() const;
  void _internal_set_is_raw_rosmessage(bool value);
  public:

  // @@protoc_insertion_point(class_scope:roborts_costmap.ParaInflationLayer)
 private:
  class _Internal;

  // helper for ByteSizeLong()
  size_t RequiredFieldsByteSizeFallback() const;

  template <typename T> friend class ::PROTOBUF_NAMESPACE_ID::Arena::InternalHelper;
  typedef void InternalArenaConstructable_;
  typedef void DestructorSkippable_;
  struct Impl_ {
    ::PROTOBUF_NAMESPACE_ID::internal::HasBits<1> _has_bits_;
    mutable ::PROTOBUF_NAMESPACE_ID::internal::CachedSize _cached_size_;
    double inflation_radius_;
    double cost_scaling_factor_;
    bool is_debug_;
    bool is_raw_rosmessage_;
  };
  union { Impl_ _impl_; };
  friend struct ::TableStruct_inflation_5flayer_5fsetting_2eproto;
};
// ===================================================================


// ===================================================================

#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// ParaInflationLayer

// required double inflation_radius = 1;
inline bool ParaInflationLayer::_internal_has_inflation_radius() const {
  bool value = (_impl_._has_bits_[0] & 0x00000001u) != 0;
  return value;
}
inline bool ParaInflationLayer::has_inflation_radius() const {
  return _internal_has_inflation_radius();
}
inline void ParaInflationLayer::clear_inflation_radius() {
  _impl_.inflation_radius_ = 0;
  _impl_._has_bits_[0] &= ~0x00000001u;
}
inline double ParaInflationLayer::_internal_inflation_radius() const {
  return _impl_.inflation_radius_;
}
inline double ParaInflationLayer::inflation_radius() const {
  // @@protoc_insertion_point(field_get:roborts_costmap.ParaInflationLayer.inflation_radius)
  return _internal_inflation_radius();
}
inline void ParaInflationLayer::_internal_set_inflation_radius(double value) {
  _impl_._has_bits_[0] |= 0x00000001u;
  _impl_.inflation_radius_ = value;
}
inline void ParaInflationLayer::set_inflation_radius(double value) {
  _internal_set_inflation_radius(value);
  // @@protoc_insertion_point(field_set:roborts_costmap.ParaInflationLayer.inflation_radius)
}

// required double cost_scaling_factor = 2;
inline bool ParaInflationLayer::_internal_has_cost_scaling_factor() const {
  bool value = (_impl_._has_bits_[0] & 0x00000002u) != 0;
  return value;
}
inline bool ParaInflationLayer::has_cost_scaling_factor() const {
  return _internal_has_cost_scaling_factor();
}
inline void ParaInflationLayer::clear_cost_scaling_factor() {
  _impl_.cost_scaling_factor_ = 0;
  _impl_._has_bits_[0] &= ~0x00000002u;
}
inline double ParaInflationLayer::_internal_cost_scaling_factor() const {
  return _impl_.cost_scaling_factor_;
}
inline double ParaInflationLayer::cost_scaling_factor() const {
  // @@protoc_insertion_point(field_get:roborts_costmap.ParaInflationLayer.cost_scaling_factor)
  return _internal_cost_scaling_factor();
}
inline void ParaInflationLayer::_internal_set_cost_scaling_factor(double value) {
  _impl_._has_bits_[0] |= 0x00000002u;
  _impl_.cost_scaling_factor_ = value;
}
inline void ParaInflationLayer::set_cost_scaling_factor(double value) {
  _internal_set_cost_scaling_factor(value);
  // @@protoc_insertion_point(field_set:roborts_costmap.ParaInflationLayer.cost_scaling_factor)
}

// required bool is_debug = 3;
inline bool ParaInflationLayer::_internal_has_is_debug() const {
  bool value = (_impl_._has_bits_[0] & 0x00000004u) != 0;
  return value;
}
inline bool ParaInflationLayer::has_is_debug() const {
  return _internal_has_is_debug();
}
inline void ParaInflationLayer::clear_is_debug() {
  _impl_.is_debug_ = false;
  _impl_._has_bits_[0] &= ~0x00000004u;
}
inline bool ParaInflationLayer::_internal_is_debug() const {
  return _impl_.is_debug_;
}
inline bool ParaInflationLayer::is_debug() const {
  // @@protoc_insertion_point(field_get:roborts_costmap.ParaInflationLayer.is_debug)
  return _internal_is_debug();
}
inline void ParaInflationLayer::_internal_set_is_debug(bool value) {
  _impl_._has_bits_[0] |= 0x00000004u;
  _impl_.is_debug_ = value;
}
inline void ParaInflationLayer::set_is_debug(bool value) {
  _internal_set_is_debug(value);
  // @@protoc_insertion_point(field_set:roborts_costmap.ParaInflationLayer.is_debug)
}

// required bool is_raw_rosmessage = 4;
inline bool ParaInflationLayer::_internal_has_is_raw_rosmessage() const {
  bool value = (_impl_._has_bits_[0] & 0x00000008u) != 0;
  return value;
}
inline bool ParaInflationLayer::has_is_raw_rosmessage() const {
  return _internal_has_is_raw_rosmessage();
}
inline void ParaInflationLayer::clear_is_raw_rosmessage() {
  _impl_.is_raw_rosmessage_ = false;
  _impl_._has_bits_[0] &= ~0x00000008u;
}
inline bool ParaInflationLayer::_internal_is_raw_rosmessage() const {
  return _impl_.is_raw_rosmessage_;
}
inline bool ParaInflationLayer::is_raw_rosmessage() const {
  // @@protoc_insertion_point(field_get:roborts_costmap.ParaInflationLayer.is_raw_rosmessage)
  return _internal_is_raw_rosmessage();
}
inline void ParaInflationLayer::_internal_set_is_raw_rosmessage(bool value) {
  _impl_._has_bits_[0] |= 0x00000008u;
  _impl_.is_raw_rosmessage_ = value;
}
inline void ParaInflationLayer::set_is_raw_rosmessage(bool value) {
  _internal_set_is_raw_rosmessage(value);
  // @@protoc_insertion_point(field_set:roborts_costmap.ParaInflationLayer.is_raw_rosmessage)
}

#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__

// @@protoc_insertion_point(namespace_scope)

}  // namespace roborts_costmap

// @@protoc_insertion_point(global_scope)

#include <google/protobuf/port_undef.inc>
#endif  // GOOGLE_PROTOBUF_INCLUDED_GOOGLE_PROTOBUF_INCLUDED_inflation_5flayer_5fsetting_2eproto