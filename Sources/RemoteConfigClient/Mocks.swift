
import Dependencies

extension DependencyValues {
	public var remoteConfigClient: RemoteConfigClient {
		get { self[RemoteConfigClient.self] }
		set { self[RemoteConfigClient.self] = newValue }
	}
}

extension RemoteConfigClient: TestDependencyKey {
    public static var testValue: Self {
        Self()
    }
    
    public static var previewValue: Self {
        Self()
    }
}

extension RemoteConfigClient {
    public static let happyPath: Self = {
        return .init(
            editorChoices: {
				RemoteConfigClient.EditorChoice.all
            },
            photoSelectionLimitNumber: {
                20
            }
        )
    }()
}
