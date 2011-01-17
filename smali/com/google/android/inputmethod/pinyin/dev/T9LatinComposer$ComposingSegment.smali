.class Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;
.super Ljava/lang/Object;
.source "T9LatinComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComposingSegment"
.end annotation


# instance fields
.field result:Ljava/lang/String;

.field source:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;-><init>()V

    return-void
.end method
