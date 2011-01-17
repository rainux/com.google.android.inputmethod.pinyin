.class public final enum Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;
.super Ljava/lang/Enum;
.source "PinyinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/PinyinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

.field public static final enum STATE_APP_COMPLETION:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

.field public static final enum STATE_BYPASS:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

.field public static final enum STATE_COMPOSING:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

.field public static final enum STATE_IDLE:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

.field public static final enum STATE_INPUT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

.field public static final enum STATE_LATIN_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

.field public static final enum STATE_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2279
    new-instance v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    const-string v1, "STATE_BYPASS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_BYPASS:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    new-instance v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    const-string v1, "STATE_IDLE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_IDLE:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    new-instance v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    const-string v1, "STATE_INPUT"

    invoke-direct {v0, v1, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_INPUT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    new-instance v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    const-string v1, "STATE_COMPOSING"

    invoke-direct {v0, v1, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_COMPOSING:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    new-instance v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    const-string v1, "STATE_PREDICT"

    invoke-direct {v0, v1, v7}, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    .line 2280
    new-instance v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    const-string v1, "STATE_APP_COMPLETION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_APP_COMPLETION:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    new-instance v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    const-string v1, "STATE_LATIN_PREDICT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_LATIN_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    .line 2278
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_BYPASS:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_IDLE:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_INPUT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_COMPOSING:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_APP_COMPLETION:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_LATIN_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->$VALUES:[Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;
    .registers 2
    .parameter "name"

    .prologue
    .line 2278
    const-class v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    return-object p0
.end method

.method public static values()[Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;
    .registers 1

    .prologue
    .line 2278
    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->$VALUES:[Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    invoke-virtual {v0}, [Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    return-object v0
.end method
