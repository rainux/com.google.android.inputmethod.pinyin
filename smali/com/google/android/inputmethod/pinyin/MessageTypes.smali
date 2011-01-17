.class public Lcom/google/android/inputmethod/pinyin/MessageTypes;
.super Ljava/lang/Object;
.source "MessageTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/MessageTypes$IDictionary;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$IPhrase;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$IDownloadResponse;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$IDownloadRequest;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$IUploadResponse;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$IUploadRequest;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$IClearResponse;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$IClearRequest;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$IClient;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$IComponent;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$ISyncValue;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$ISyncKey;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$IUserDictionaryValue;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$IUserDictionaryKey;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$ISyncError;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$ISyncItem;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$IAUTH;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$IGUID;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$IGAIA;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$ICSRPCResponse;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$ICSRPCErrorCode;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$ICSRPCRequest;,
        Lcom/google/android/inputmethod/pinyin/MessageTypes$ICSRPCName;
    }
.end annotation


# static fields
.field public static final AUTH:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final CLEAR_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final CLEAR_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final CSRPC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final CSRPC_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final DICTIONARY:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final DOWNLOAD_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final DOWNLOAD_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GAIA:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GUID:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final PHRASE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final SYNC_ITEM:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final SYNC_KEY:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final SYNC_VALUE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final UPLOAD_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final UPLOAD_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final USER_DICTIONARY_KEY:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final USER_DICTIONARY_VALUE:Lcom/google/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/16 v7, 0x124

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 153
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->CSRPC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    .line 154
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->CSRPC_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 156
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->GAIA:Lcom/google/common/io/protocol/ProtoBufType;

    .line 157
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->GUID:Lcom/google/common/io/protocol/ProtoBufType;

    .line 158
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->AUTH:Lcom/google/common/io/protocol/ProtoBufType;

    .line 160
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->USER_DICTIONARY_KEY:Lcom/google/common/io/protocol/ProtoBufType;

    .line 161
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->USER_DICTIONARY_VALUE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 163
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->SYNC_KEY:Lcom/google/common/io/protocol/ProtoBufType;

    .line 164
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->SYNC_VALUE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 165
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->SYNC_ITEM:Lcom/google/common/io/protocol/ProtoBufType;

    .line 167
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->CLEAR_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    .line 168
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->CLEAR_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 170
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->UPLOAD_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    .line 171
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->UPLOAD_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 173
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->DOWNLOAD_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    .line 174
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->DOWNLOAD_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 188
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->PHRASE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 189
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->DICTIONARY:Lcom/google/common/io/protocol/ProtoBufType;

    .line 192
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->CSRPC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v7, v5, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 196
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->CSRPC_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11e

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x224

    invoke-virtual {v0, v1, v6, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 202
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->GAIA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v7, v5, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v6, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 208
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->GUID:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v7, v5, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 212
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->AUTH:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x21b

    sget-object v2, Lcom/google/android/inputmethod/pinyin/MessageTypes;->GAIA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    sget-object v2, Lcom/google/android/inputmethod/pinyin/MessageTypes;->GUID:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 218
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->USER_DICTIONARY_KEY:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v7, v5, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v6, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 224
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->USER_DICTIONARY_VALUE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v5, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 228
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->SYNC_KEY:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x21b

    sget-object v2, Lcom/google/android/inputmethod/pinyin/MessageTypes;->USER_DICTIONARY_KEY:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 232
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->SYNC_VALUE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x21b

    sget-object v2, Lcom/google/android/inputmethod/pinyin/MessageTypes;->USER_DICTIONARY_VALUE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 236
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->SYNC_ITEM:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11d

    invoke-virtual {v0, v1, v5, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11b

    invoke-virtual {v0, v1, v6, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11b

    invoke-virtual {v0, v1, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/4 v2, 0x4

    sget-object v3, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x214

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x224

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 250
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->CLEAR_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v5, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11b

    sget-object v2, Lcom/google/android/inputmethod/pinyin/MessageTypes;->AUTH:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41d

    invoke-virtual {v0, v1, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21d

    const/4 v2, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 260
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->CLEAR_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11e

    invoke-virtual {v0, v1, v5, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 264
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->UPLOAD_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v5, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11b

    sget-object v2, Lcom/google/android/inputmethod/pinyin/MessageTypes;->AUTH:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x419

    sget-object v2, Lcom/google/android/inputmethod/pinyin/MessageTypes;->SYNC_ITEM:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v8, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x214

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21d

    const/4 v2, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 276
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->UPLOAD_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11e

    invoke-virtual {v0, v1, v5, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 280
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->DOWNLOAD_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v5, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11b

    sget-object v2, Lcom/google/android/inputmethod/pinyin/MessageTypes;->AUTH:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x114

    invoke-virtual {v0, v1, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/4 v2, 0x5

    sget-object v3, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41d

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21d

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21d

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21d

    const/16 v2, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 298
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->DOWNLOAD_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x214

    invoke-virtual {v0, v1, v6, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    sget-object v2, Lcom/google/android/inputmethod/pinyin/MessageTypes;->SYNC_ITEM:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v8, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 306
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->PHRASE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v7, v5, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v6, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x114

    invoke-virtual {v0, v1, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x114

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 316
    sget-object v0, Lcom/google/android/inputmethod/pinyin/MessageTypes;->DICTIONARY:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x41b

    sget-object v2, Lcom/google/android/inputmethod/pinyin/MessageTypes;->PHRASE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 320
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    return-void
.end method
