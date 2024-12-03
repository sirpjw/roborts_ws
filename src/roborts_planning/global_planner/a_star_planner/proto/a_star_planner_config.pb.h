// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: a_star_planner_config.proto

#ifndef GOOGLE_PROTOBUF_INCLUDED_a_5fstar_5fplanner_5fconfig_2eproto
#define GOOGLE_PROTOBUF_INCLUDED_a_5fstar_5fplanner_5fconfig_2eproto

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
#define PROTOBUF_INTERNAL_EXPORT_a_5fstar_5fplanner_5fconfig_2eproto
PROTOBUF_NAMESPACE_OPEN
namespace internal {
class AnyMetadata;
}  // namespace internal
PROTOBUF_NAMESPACE_CLOSE

// Internal implementation detail -- do not use these members.
struct TableStruct_a_5fstar_5fplanner_5fconfig_2eproto {
  static const uint32_t offsets[];
};
extern const ::PROTOBUF_NAMESPACE_ID::internal::DescriptorTable descriptor_table_a_5fstar_5fplanner_5fconfig_2eproto;
namespace roborts_global_planner {
class AStarPlannerConfig;
struct AStarPlannerConfigDefaultTypeInternal;
extern AStarPlannerConfigDefaultTypeInternal _AStarPlannerConfig_default_instance_;
}  // namespace roborts_global_planner
PROTOBUF_NAMESPACE_OPEN
template<> ::roborts_global_planner::AStarPlannerConfig* Arena::CreateMaybeMessage<::roborts_global_planner::AStarPlannerConfig>(Arena*);
PROTOBUF_NAMESPACE_CLOSE
namespace roborts_global_planner {

// ===================================================================

class AStarPlannerConfig final :
    public ::PROTOBUF_NAMESPACE_ID::Message /* @@protoc_insertion_point(class_definition:roborts_global_planner.AStarPlannerConfig) */ {
 public:
  inline AStarPlannerConfig() : AStarPlannerConfig(nullptr) {}
  ~AStarPlannerConfig() override;
  explicit PROTOBUF_CONSTEXPR AStarPlannerConfig(::PROTOBUF_NAMESPACE_ID::internal::ConstantInitialized);

  AStarPlannerConfig(const AStarPlannerConfig& from);
  AStarPlannerConfig(AStarPlannerConfig&& from) noexcept
    : AStarPlannerConfig() {
    *this = ::std::move(from);
  }

  inline AStarPlannerConfig& operator=(const AStarPlannerConfig& from) {
    CopyFrom(from);
    return *this;
  }
  inline AStarPlannerConfig& operator=(AStarPlannerConfig&& from) noexcept {
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
  static const AStarPlannerConfig& default_instance() {
    return *internal_default_instance();
  }
  static inline const AStarPlannerConfig* internal_default_instance() {
    return reinterpret_cast<const AStarPlannerConfig*>(
               &_AStarPlannerConfig_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    0;

  friend void swap(AStarPlannerConfig& a, AStarPlannerConfig& b) {
    a.Swap(&b);
  }
  inline void Swap(AStarPlannerConfig* other) {
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
  void UnsafeArenaSwap(AStarPlannerConfig* other) {
    if (other == this) return;
    GOOGLE_DCHECK(GetOwningArena() == other->GetOwningArena());
    InternalSwap(other);
  }

  // implements Message ----------------------------------------------

  AStarPlannerConfig* New(::PROTOBUF_NAMESPACE_ID::Arena* arena = nullptr) const final {
    return CreateMaybeMessage<AStarPlannerConfig>(arena);
  }
  using ::PROTOBUF_NAMESPACE_ID::Message::CopyFrom;
  void CopyFrom(const AStarPlannerConfig& from);
  using ::PROTOBUF_NAMESPACE_ID::Message::MergeFrom;
  void MergeFrom( const AStarPlannerConfig& from) {
    AStarPlannerConfig::MergeImpl(*this, from);
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
  void InternalSwap(AStarPlannerConfig* other);

  private:
  friend class ::PROTOBUF_NAMESPACE_ID::internal::AnyMetadata;
  static ::PROTOBUF_NAMESPACE_ID::StringPiece FullMessageName() {
    return "roborts_global_planner.AStarPlannerConfig";
  }
  protected:
  explicit AStarPlannerConfig(::PROTOBUF_NAMESPACE_ID::Arena* arena,
                       bool is_message_owned = false);
  public:

  static const ClassData _class_data_;
  const ::PROTOBUF_NAMESPACE_ID::Message::ClassData*GetClassData() const final;

  ::PROTOBUF_NAMESPACE_ID::Metadata GetMetadata() const final;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  enum : int {
    kGoalSearchToleranceFieldNumber = 3,
    kInaccessibleCostFieldNumber = 1,
    kHeuristicFactorFieldNumber = 2,
  };
  // optional float goal_search_tolerance = 3 [default = 0.25];
  bool has_goal_search_tolerance() const;
  private:
  bool _internal_has_goal_search_tolerance() const;
  public:
  void clear_goal_search_tolerance();
  float goal_search_tolerance() const;
  void set_goal_search_tolerance(float value);
  private:
  float _internal_goal_search_tolerance() const;
  void _internal_set_goal_search_tolerance(float value);
  public:

  // optional uint32 inaccessible_cost = 1 [default = 253];
  bool has_inaccessible_cost() const;
  private:
  bool _internal_has_inaccessible_cost() const;
  public:
  void clear_inaccessible_cost();
  uint32_t inaccessible_cost() const;
  void set_inaccessible_cost(uint32_t value);
  private:
  uint32_t _internal_inaccessible_cost() const;
  void _internal_set_inaccessible_cost(uint32_t value);
  public:

  // optional float heuristic_factor = 2 [default = 1];
  bool has_heuristic_factor() const;
  private:
  bool _internal_has_heuristic_factor() const;
  public:
  void clear_heuristic_factor();
  float heuristic_factor() const;
  void set_heuristic_factor(float value);
  private:
  float _internal_heuristic_factor() const;
  void _internal_set_heuristic_factor(float value);
  public:

  // @@protoc_insertion_point(class_scope:roborts_global_planner.AStarPlannerConfig)
 private:
  class _Internal;

  template <typename T> friend class ::PROTOBUF_NAMESPACE_ID::Arena::InternalHelper;
  typedef void InternalArenaConstructable_;
  typedef void DestructorSkippable_;
  struct Impl_ {
    ::PROTOBUF_NAMESPACE_ID::internal::HasBits<1> _has_bits_;
    mutable ::PROTOBUF_NAMESPACE_ID::internal::CachedSize _cached_size_;
    float goal_search_tolerance_;
    uint32_t inaccessible_cost_;
    float heuristic_factor_;
  };
  union { Impl_ _impl_; };
  friend struct ::TableStruct_a_5fstar_5fplanner_5fconfig_2eproto;
};
// ===================================================================


// ===================================================================

#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// AStarPlannerConfig

// optional uint32 inaccessible_cost = 1 [default = 253];
inline bool AStarPlannerConfig::_internal_has_inaccessible_cost() const {
  bool value = (_impl_._has_bits_[0] & 0x00000002u) != 0;
  return value;
}
inline bool AStarPlannerConfig::has_inaccessible_cost() const {
  return _internal_has_inaccessible_cost();
}
inline void AStarPlannerConfig::clear_inaccessible_cost() {
  _impl_.inaccessible_cost_ = 253u;
  _impl_._has_bits_[0] &= ~0x00000002u;
}
inline uint32_t AStarPlannerConfig::_internal_inaccessible_cost() const {
  return _impl_.inaccessible_cost_;
}
inline uint32_t AStarPlannerConfig::inaccessible_cost() const {
  // @@protoc_insertion_point(field_get:roborts_global_planner.AStarPlannerConfig.inaccessible_cost)
  return _internal_inaccessible_cost();
}
inline void AStarPlannerConfig::_internal_set_inaccessible_cost(uint32_t value) {
  _impl_._has_bits_[0] |= 0x00000002u;
  _impl_.inaccessible_cost_ = value;
}
inline void AStarPlannerConfig::set_inaccessible_cost(uint32_t value) {
  _internal_set_inaccessible_cost(value);
  // @@protoc_insertion_point(field_set:roborts_global_planner.AStarPlannerConfig.inaccessible_cost)
}

// optional float heuristic_factor = 2 [default = 1];
inline bool AStarPlannerConfig::_internal_has_heuristic_factor() const {
  bool value = (_impl_._has_bits_[0] & 0x00000004u) != 0;
  return value;
}
inline bool AStarPlannerConfig::has_heuristic_factor() const {
  return _internal_has_heuristic_factor();
}
inline void AStarPlannerConfig::clear_heuristic_factor() {
  _impl_.heuristic_factor_ = 1;
  _impl_._has_bits_[0] &= ~0x00000004u;
}
inline float AStarPlannerConfig::_internal_heuristic_factor() const {
  return _impl_.heuristic_factor_;
}
inline float AStarPlannerConfig::heuristic_factor() const {
  // @@protoc_insertion_point(field_get:roborts_global_planner.AStarPlannerConfig.heuristic_factor)
  return _internal_heuristic_factor();
}
inline void AStarPlannerConfig::_internal_set_heuristic_factor(float value) {
  _impl_._has_bits_[0] |= 0x00000004u;
  _impl_.heuristic_factor_ = value;
}
inline void AStarPlannerConfig::set_heuristic_factor(float value) {
  _internal_set_heuristic_factor(value);
  // @@protoc_insertion_point(field_set:roborts_global_planner.AStarPlannerConfig.heuristic_factor)
}

// optional float goal_search_tolerance = 3 [default = 0.25];
inline bool AStarPlannerConfig::_internal_has_goal_search_tolerance() const {
  bool value = (_impl_._has_bits_[0] & 0x00000001u) != 0;
  return value;
}
inline bool AStarPlannerConfig::has_goal_search_tolerance() const {
  return _internal_has_goal_search_tolerance();
}
inline void AStarPlannerConfig::clear_goal_search_tolerance() {
  _impl_.goal_search_tolerance_ = 0.25f;
  _impl_._has_bits_[0] &= ~0x00000001u;
}
inline float AStarPlannerConfig::_internal_goal_search_tolerance() const {
  return _impl_.goal_search_tolerance_;
}
inline float AStarPlannerConfig::goal_search_tolerance() const {
  // @@protoc_insertion_point(field_get:roborts_global_planner.AStarPlannerConfig.goal_search_tolerance)
  return _internal_goal_search_tolerance();
}
inline void AStarPlannerConfig::_internal_set_goal_search_tolerance(float value) {
  _impl_._has_bits_[0] |= 0x00000001u;
  _impl_.goal_search_tolerance_ = value;
}
inline void AStarPlannerConfig::set_goal_search_tolerance(float value) {
  _internal_set_goal_search_tolerance(value);
  // @@protoc_insertion_point(field_set:roborts_global_planner.AStarPlannerConfig.goal_search_tolerance)
}

#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__

// @@protoc_insertion_point(namespace_scope)

}  // namespace roborts_global_planner

// @@protoc_insertion_point(global_scope)

#include <google/protobuf/port_undef.inc>
#endif  // GOOGLE_PROTOBUF_INCLUDED_GOOGLE_PROTOBUF_INCLUDED_a_5fstar_5fplanner_5fconfig_2eproto
