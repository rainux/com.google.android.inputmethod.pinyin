.class Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;
.super Ljava/lang/Object;
.source "UpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/UpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateResult"
.end annotation


# instance fields
.field public failureCount:I

.field public mostRecentTimeStamp:J

.field public successCount:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->successCount:I

    .line 515
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->failureCount:I

    .line 519
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->mostRecentTimeStamp:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/inputmethod/pinyin/UpdateTask$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;-><init>()V

    return-void
.end method
