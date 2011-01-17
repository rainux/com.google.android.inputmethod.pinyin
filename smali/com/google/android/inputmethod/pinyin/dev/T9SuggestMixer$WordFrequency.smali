.class Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;
.super Ljava/lang/Object;
.source "T9SuggestMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WordFrequency"
.end annotation


# instance fields
.field public frequency:I

.field public word:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;-><init>()V

    return-void
.end method
