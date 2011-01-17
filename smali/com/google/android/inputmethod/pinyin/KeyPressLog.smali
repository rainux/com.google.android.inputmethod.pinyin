.class public Lcom/google/android/inputmethod/pinyin/KeyPressLog;
.super Ljava/lang/Object;
.source "KeyPressLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/google/android/inputmethod/pinyin/KeyPressLog;


# instance fields
.field private mPoints:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->mInstance:Lcom/google/android/inputmethod/pinyin/KeyPressLog;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->mPoints:Ljava/util/Vector;

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/google/android/inputmethod/pinyin/KeyPressLog;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->mInstance:Lcom/google/android/inputmethod/pinyin/KeyPressLog;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/inputmethod/pinyin/KeyPressLog;

    invoke-direct {v0}, Lcom/google/android/inputmethod/pinyin/KeyPressLog;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->mInstance:Lcom/google/android/inputmethod/pinyin/KeyPressLog;

    .line 18
    :cond_b
    sget-object v0, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->mInstance:Lcom/google/android/inputmethod/pinyin/KeyPressLog;

    return-object v0
.end method


# virtual methods
.method public deleteLastPoint()V
    .registers 4

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 30
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->mPoints:Ljava/util/Vector;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->mPoints:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 32
    :cond_15
    return-void
.end method

.method public getPoint(I)Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;
    .registers 3
    .parameter "pos"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    const/4 v0, 0x0

    .line 40
    .end local p0
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;

    move-object v0, p0

    goto :goto_9
.end method

.method public getPointsNum()I
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public putPoint(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;-><init>(Lcom/google/android/inputmethod/pinyin/KeyPressLog;)V

    .line 23
    .local v0, p:Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;
    iput p1, v0, Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;->x:I

    .line 24
    iput p2, v0, Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;->y:I

    .line 25
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->mPoints:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 45
    return-void
.end method
