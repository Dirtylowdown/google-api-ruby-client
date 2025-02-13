# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ChecksV1alpha
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents an app in Checks.
      class GoogleChecksAccountV1alphaApp
        include Google::Apis::Core::Hashable
      
        # The resource name of the app. Example: `accounts/123/apps/456`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The app's title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The response message for AccountService.ListApps.
      class GoogleChecksAccountV1alphaListAppsResponse
        include Google::Apis::Core::Hashable
      
        # The apps.
        # Corresponds to the JSON property `apps`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksAccountV1alphaApp>]
        attr_accessor :apps
      
        # A token which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apps = args[:apps] if args.key?(:apps)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request proto for ClassifyContent RPC.
      class GoogleChecksAisafetyV1alphaClassifyContentRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Version of the classifier to use. If not specified, the latest
        # version will be used.
        # Corresponds to the JSON property `classifierVersion`
        # @return [String]
        attr_accessor :classifier_version
      
        # Context about the input that will be used to help on the classification.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksAisafetyV1alphaClassifyContentRequestContext]
        attr_accessor :context
      
        # Content to be classified.
        # Corresponds to the JSON property `input`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent]
        attr_accessor :input
      
        # Required. List of policies to classify against.
        # Corresponds to the JSON property `policies`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig>]
        attr_accessor :policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classifier_version = args[:classifier_version] if args.key?(:classifier_version)
          @context = args[:context] if args.key?(:context)
          @input = args[:input] if args.key?(:input)
          @policies = args[:policies] if args.key?(:policies)
        end
      end
      
      # Context about the input that will be used to help on the classification.
      class GoogleChecksAisafetyV1alphaClassifyContentRequestContext
        include Google::Apis::Core::Hashable
      
        # Optional. Prompt that generated the model response.
        # Corresponds to the JSON property `prompt`
        # @return [String]
        attr_accessor :prompt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @prompt = args[:prompt] if args.key?(:prompt)
        end
      end
      
      # Content to be classified.
      class GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent
        include Google::Apis::Core::Hashable
      
        # Text input to be classified.
        # Corresponds to the JSON property `textInput`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksAisafetyV1alphaTextInput]
        attr_accessor :text_input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text_input = args[:text_input] if args.key?(:text_input)
        end
      end
      
      # List of policies to classify against.
      class GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig
        include Google::Apis::Core::Hashable
      
        # Required. Type of the policy.
        # Corresponds to the JSON property `policyType`
        # @return [String]
        attr_accessor :policy_type
      
        # Optional. Score threshold to use when deciding if the content is violative or
        # non-violative. If not specified, the default 0.5 threshold for the policy will
        # be used.
        # Corresponds to the JSON property `threshold`
        # @return [Float]
        attr_accessor :threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_type = args[:policy_type] if args.key?(:policy_type)
          @threshold = args[:threshold] if args.key?(:threshold)
        end
      end
      
      # Response proto for ClassifyContent RPC.
      class GoogleChecksAisafetyV1alphaClassifyContentResponse
        include Google::Apis::Core::Hashable
      
        # Results of the classification for each policy.
        # Corresponds to the JSON property `policyResults`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult>]
        attr_accessor :policy_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_results = args[:policy_results] if args.key?(:policy_results)
        end
      end
      
      # Result for one policy against the corresponding input.
      class GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult
        include Google::Apis::Core::Hashable
      
        # Type of the policy.
        # Corresponds to the JSON property `policyType`
        # @return [String]
        attr_accessor :policy_type
      
        # Final score for the results of this policy.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # Result of the classification for the policy.
        # Corresponds to the JSON property `violationResult`
        # @return [String]
        attr_accessor :violation_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_type = args[:policy_type] if args.key?(:policy_type)
          @score = args[:score] if args.key?(:score)
          @violation_result = args[:violation_result] if args.key?(:violation_result)
        end
      end
      
      # Text input to be classified.
      class GoogleChecksAisafetyV1alphaTextInput
        include Google::Apis::Core::Hashable
      
        # Actual piece of text to be classified.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Optional. Language of the text in ISO 639-1 format. If the language is invalid
        # or not specified, the system will try to detect it.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # The results of a Code Compliance CLI analysis.
      class GoogleChecksRepoScanV1alphaCliAnalysis
        include Google::Apis::Core::Hashable
      
        # Optional. Requested code scans resulting from preliminary CLI analysis.
        # Corresponds to the JSON property `codeScans`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaCodeScan>]
        attr_accessor :code_scans
      
        # Optional. Data sources detected in the scan.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaSource>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code_scans = args[:code_scans] if args.key?(:code_scans)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # Source code attribution.
      class GoogleChecksRepoScanV1alphaCodeAttribution
        include Google::Apis::Core::Hashable
      
        # Optional. Code excerpt where the source was detected along with surrounding
        # code.
        # Corresponds to the JSON property `codeExcerpt`
        # @return [String]
        attr_accessor :code_excerpt
      
        # Required. Line number (1-based).
        # Corresponds to the JSON property `lineNumber`
        # @return [Fixnum]
        attr_accessor :line_number
      
        # Required. Path of the file.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Optional. Start line number of the code excerpt (1-based).
        # Corresponds to the JSON property `startLineNumber`
        # @return [Fixnum]
        attr_accessor :start_line_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code_excerpt = args[:code_excerpt] if args.key?(:code_excerpt)
          @line_number = args[:line_number] if args.key?(:line_number)
          @path = args[:path] if args.key?(:path)
          @start_line_number = args[:start_line_number] if args.key?(:start_line_number)
        end
      end
      
      # A requested analysis of source code. Contains the source code and processing
      # state.
      class GoogleChecksRepoScanV1alphaCodeScan
        include Google::Apis::Core::Hashable
      
        # Optional. Data type classification requests.
        # Corresponds to the JSON property `dataTypeClassifications`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification>]
        attr_accessor :data_type_classifications
      
        # Contains source code from a repo.
        # Corresponds to the JSON property `sourceCode`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaSourceCode]
        attr_accessor :source_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type_classifications = args[:data_type_classifications] if args.key?(:data_type_classifications)
          @source_code = args[:source_code] if args.key?(:source_code)
        end
      end
      
      # A request to classify data types.
      class GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification
        include Google::Apis::Core::Hashable
      
        # Required. Candidate data type.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Required. Line number (1-based).
        # Corresponds to the JSON property `lineNumber`
        # @return [Fixnum]
        attr_accessor :line_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @line_number = args[:line_number] if args.key?(:line_number)
        end
      end
      
      # The request message for RepoScanService.GenerateScan.
      class GoogleChecksRepoScanV1alphaGenerateScanRequest
        include Google::Apis::Core::Hashable
      
        # The results of a Code Compliance CLI analysis.
        # Corresponds to the JSON property `cliAnalysis`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaCliAnalysis]
        attr_accessor :cli_analysis
      
        # Required. CLI version.
        # Corresponds to the JSON property `cliVersion`
        # @return [String]
        attr_accessor :cli_version
      
        # Required. Local scan path.
        # Corresponds to the JSON property `localScanPath`
        # @return [String]
        attr_accessor :local_scan_path
      
        # SCM metadata.
        # Corresponds to the JSON property `scmMetadata`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaScmMetadata]
        attr_accessor :scm_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cli_analysis = args[:cli_analysis] if args.key?(:cli_analysis)
          @cli_version = args[:cli_version] if args.key?(:cli_version)
          @local_scan_path = args[:local_scan_path] if args.key?(:local_scan_path)
          @scm_metadata = args[:scm_metadata] if args.key?(:scm_metadata)
        end
      end
      
      # The response message for RepoScanService.ListRepoScans.
      class GoogleChecksRepoScanV1alphaListRepoScansResponse
        include Google::Apis::Core::Hashable
      
        # A token which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The repo scans for the specified app.
        # Corresponds to the JSON property `repoScans`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaRepoScan>]
        attr_accessor :repo_scans
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @repo_scans = args[:repo_scans] if args.key?(:repo_scans)
        end
      end
      
      # Pull request info.
      class GoogleChecksRepoScanV1alphaPullRequest
        include Google::Apis::Core::Hashable
      
        # Required. For PR analysis, we compare against the most recent scan of the base
        # branch to highlight new issues.
        # Corresponds to the JSON property `baseBranch`
        # @return [String]
        attr_accessor :base_branch
      
        # Required. This can be supplied by the user or parsed automatically from
        # predefined CI environment variables.
        # Corresponds to the JSON property `prNumber`
        # @return [String]
        attr_accessor :pr_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_branch = args[:base_branch] if args.key?(:base_branch)
          @pr_number = args[:pr_number] if args.key?(:pr_number)
        end
      end
      
      # Repo scan.
      class GoogleChecksRepoScanV1alphaRepoScan
        include Google::Apis::Core::Hashable
      
        # CLI version.
        # Corresponds to the JSON property `cliVersion`
        # @return [String]
        attr_accessor :cli_version
      
        # Local scan path.
        # Corresponds to the JSON property `localScanPath`
        # @return [String]
        attr_accessor :local_scan_path
      
        # Identifier. Resource name of the scan.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A URL to view results.
        # Corresponds to the JSON property `resultsUri`
        # @return [String]
        attr_accessor :results_uri
      
        # SCM metadata.
        # Corresponds to the JSON property `scmMetadata`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaScmMetadata]
        attr_accessor :scm_metadata
      
        # Data sources detected.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaSource>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cli_version = args[:cli_version] if args.key?(:cli_version)
          @local_scan_path = args[:local_scan_path] if args.key?(:local_scan_path)
          @name = args[:name] if args.key?(:name)
          @results_uri = args[:results_uri] if args.key?(:results_uri)
          @scm_metadata = args[:scm_metadata] if args.key?(:scm_metadata)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # SCM metadata.
      class GoogleChecksRepoScanV1alphaScmMetadata
        include Google::Apis::Core::Hashable
      
        # Required. Branch name.
        # Corresponds to the JSON property `branch`
        # @return [String]
        attr_accessor :branch
      
        # Pull request info.
        # Corresponds to the JSON property `pullRequest`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaPullRequest]
        attr_accessor :pull_request
      
        # Required. Git remote URL.
        # Corresponds to the JSON property `remoteUri`
        # @return [String]
        attr_accessor :remote_uri
      
        # Required. Revision ID, e.g. Git commit hash.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branch = args[:branch] if args.key?(:branch)
          @pull_request = args[:pull_request] if args.key?(:pull_request)
          @remote_uri = args[:remote_uri] if args.key?(:remote_uri)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # Represents a data source finding.
      class GoogleChecksRepoScanV1alphaSource
        include Google::Apis::Core::Hashable
      
        # Source code attribution.
        # Corresponds to the JSON property `codeAttribution`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaCodeAttribution]
        attr_accessor :code_attribution
      
        # Required. Data type.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Optional. Whether the finding was marked as a false positive.
        # Corresponds to the JSON property `falsePositive`
        # @return [Boolean]
        attr_accessor :false_positive
        alias_method :false_positive?, :false_positive
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code_attribution = args[:code_attribution] if args.key?(:code_attribution)
          @data_type = args[:data_type] if args.key?(:data_type)
          @false_positive = args[:false_positive] if args.key?(:false_positive)
        end
      end
      
      # Contains source code from a repo.
      class GoogleChecksRepoScanV1alphaSourceCode
        include Google::Apis::Core::Hashable
      
        # Required. Source code.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Required. End line number (1-based).
        # Corresponds to the JSON property `endLine`
        # @return [Fixnum]
        attr_accessor :end_line
      
        # Required. Path of the file.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Required. Start line number (1-based).
        # Corresponds to the JSON property `startLine`
        # @return [Fixnum]
        attr_accessor :start_line
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @end_line = args[:end_line] if args.key?(:end_line)
          @path = args[:path] if args.key?(:path)
          @start_line = args[:start_line] if args.key?(:start_line)
        end
      end
      
      # The request message for ReportService.AnalyzeUpload.
      class GoogleChecksReportV1alphaAnalyzeUploadRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The type of the uploaded app binary. If not provided, the server
        # assumes APK file for Android and IPA file for iOS.
        # Corresponds to the JSON property `appBinaryFileType`
        # @return [String]
        attr_accessor :app_binary_file_type
      
        # Optional. Git commit hash or changelist number associated with the upload.
        # Corresponds to the JSON property `codeReferenceId`
        # @return [String]
        attr_accessor :code_reference_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_binary_file_type = args[:app_binary_file_type] if args.key?(:app_binary_file_type)
          @code_reference_id = args[:code_reference_id] if args.key?(:code_reference_id)
        end
      end
      
      # Information about the analyzed app bundle.
      class GoogleChecksReportV1alphaAppBundle
        include Google::Apis::Core::Hashable
      
        # Unique id of the bundle. For example: "com.google.Gmail".
        # Corresponds to the JSON property `bundleId`
        # @return [String]
        attr_accessor :bundle_id
      
        # Git commit hash or changelist number associated with the release.
        # Corresponds to the JSON property `codeReferenceId`
        # @return [String]
        attr_accessor :code_reference_id
      
        # Identifies the type of release.
        # Corresponds to the JSON property `releaseType`
        # @return [String]
        attr_accessor :release_type
      
        # The user-visible version of the bundle such as the Android `versionName` or
        # iOS `CFBundleShortVersionString`. For example: "7.21.1".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        # The version used throughout the operating system and store to identify the
        # build such as the Android `versionCode` or iOS `CFBundleVersion`.
        # Corresponds to the JSON property `versionId`
        # @return [String]
        attr_accessor :version_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundle_id = args[:bundle_id] if args.key?(:bundle_id)
          @code_reference_id = args[:code_reference_id] if args.key?(:code_reference_id)
          @release_type = args[:release_type] if args.key?(:release_type)
          @version = args[:version] if args.key?(:version)
          @version_id = args[:version_id] if args.key?(:version_id)
        end
      end
      
      # A check that was run on your app.
      class GoogleChecksReportV1alphaCheck
        include Google::Apis::Core::Hashable
      
        # Regulations and policies that serve as the legal basis for the check.
        # Corresponds to the JSON property `citations`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckCitation>]
        attr_accessor :citations
      
        # Evidence for a check.
        # Corresponds to the JSON property `evidence`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckEvidence]
        attr_accessor :evidence
      
        # Regions that are impacted by the check. For more info, see https://google.aip.
        # dev/143#countries-and-regions.
        # Corresponds to the JSON property `regionCodes`
        # @return [Array<String>]
        attr_accessor :region_codes
      
        # The urgency or risk level of the check.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # The result after running the check.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Additional information about the check state in relation to past reports.
        # Corresponds to the JSON property `stateMetadata`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckStateMetadata]
        attr_accessor :state_metadata
      
        # The type of check that was run. A type will only appear once in a report's
        # list of checks.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @citations = args[:citations] if args.key?(:citations)
          @evidence = args[:evidence] if args.key?(:evidence)
          @region_codes = args[:region_codes] if args.key?(:region_codes)
          @severity = args[:severity] if args.key?(:severity)
          @state = args[:state] if args.key?(:state)
          @state_metadata = args[:state_metadata] if args.key?(:state_metadata)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Regulation or policy that serves as the legal basis for the check.
      class GoogleChecksReportV1alphaCheckCitation
        include Google::Apis::Core::Hashable
      
        # Citation type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Evidence concerning data security.
      class GoogleChecksReportV1alphaCheckDataSecurityEvidence
        include Google::Apis::Core::Hashable
      
        # Evidence related to data in transit.
        # Corresponds to the JSON property `dataInTransitInfo`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo>]
        attr_accessor :data_in_transit_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_in_transit_info = args[:data_in_transit_info] if args.key?(:data_in_transit_info)
        end
      end
      
      # Evidence related to data in transit detected in your app.
      class GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo
        include Google::Apis::Core::Hashable
      
        # The URL contacted by your app. This includes the protocol, domain, and URL
        # parameters.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Evidence concerning a data type that was found in your app.
      class GoogleChecksReportV1alphaCheckDataTypeEvidence
        include Google::Apis::Core::Hashable
      
        # The data type that was found in your app.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Evidence collected about a data type.
        # Corresponds to the JSON property `dataTypeEvidence`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypeEvidence]
        attr_accessor :data_type_evidence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @data_type_evidence = args[:data_type_evidence] if args.key?(:data_type_evidence)
        end
      end
      
      # Evidence concerning an endpoint that was contacted by your app.
      class GoogleChecksReportV1alphaCheckEndpointEvidence
        include Google::Apis::Core::Hashable
      
        # Information about an endpoint.
        # Corresponds to the JSON property `endpoint`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaEndpoint]
        attr_accessor :endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
        end
      end
      
      # Evidence collected from endpoint restriction violation analysis.
      class GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence
        include Google::Apis::Core::Hashable
      
        # Endpoints in violation.
        # Corresponds to the JSON property `endpointDetails`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails>]
        attr_accessor :endpoint_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint_details = args[:endpoint_details] if args.key?(:endpoint_details)
        end
      end
      
      # Details of the endpoint in violation.
      class GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails
        include Google::Apis::Core::Hashable
      
        # Information about an endpoint.
        # Corresponds to the JSON property `endpoint`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaEndpoint]
        attr_accessor :endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
        end
      end
      
      # Evidence for a check.
      class GoogleChecksReportV1alphaCheckEvidence
        include Google::Apis::Core::Hashable
      
        # Evidence concerning data security.
        # Corresponds to the JSON property `dataSecurity`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckDataSecurityEvidence]
        attr_accessor :data_security
      
        # Evidence concerning data types found in your app.
        # Corresponds to the JSON property `dataTypes`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckDataTypeEvidence>]
        attr_accessor :data_types
      
        # Evidence collected from endpoint restriction violation analysis.
        # Corresponds to the JSON property `endpointRestrictionViolations`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence>]
        attr_accessor :endpoint_restriction_violations
      
        # Evidence concerning endpoints that were contacted by your app.
        # Corresponds to the JSON property `endpoints`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckEndpointEvidence>]
        attr_accessor :endpoints
      
        # Evidence collected from permission restriction violation analysis.
        # Corresponds to the JSON property `permissionRestrictionViolations`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence>]
        attr_accessor :permission_restriction_violations
      
        # Evidence concerning permissions that were found in your app.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckPermissionEvidence>]
        attr_accessor :permissions
      
        # Evidence collected from your privacy policy(s).
        # Corresponds to the JSON property `privacyPolicyTexts`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence>]
        attr_accessor :privacy_policy_texts
      
        # Evidence concerning SDK issues.
        # Corresponds to the JSON property `sdkIssues`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckSdkIssueEvidence>]
        attr_accessor :sdk_issues
      
        # Evidence collected from SDK restriction violation analysis.
        # Corresponds to the JSON property `sdkRestrictionViolations`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence>]
        attr_accessor :sdk_restriction_violations
      
        # Evidence concerning SDKs that were found in your app.
        # Corresponds to the JSON property `sdks`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckSdkEvidence>]
        attr_accessor :sdks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_security = args[:data_security] if args.key?(:data_security)
          @data_types = args[:data_types] if args.key?(:data_types)
          @endpoint_restriction_violations = args[:endpoint_restriction_violations] if args.key?(:endpoint_restriction_violations)
          @endpoints = args[:endpoints] if args.key?(:endpoints)
          @permission_restriction_violations = args[:permission_restriction_violations] if args.key?(:permission_restriction_violations)
          @permissions = args[:permissions] if args.key?(:permissions)
          @privacy_policy_texts = args[:privacy_policy_texts] if args.key?(:privacy_policy_texts)
          @sdk_issues = args[:sdk_issues] if args.key?(:sdk_issues)
          @sdk_restriction_violations = args[:sdk_restriction_violations] if args.key?(:sdk_restriction_violations)
          @sdks = args[:sdks] if args.key?(:sdks)
        end
      end
      
      # Evidence concerning a permission that was found in your app.
      class GoogleChecksReportV1alphaCheckPermissionEvidence
        include Google::Apis::Core::Hashable
      
        # Information about a permission.
        # Corresponds to the JSON property `permission`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPermission]
        attr_accessor :permission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permission = args[:permission] if args.key?(:permission)
        end
      end
      
      # Evidence collected from permission restriction violation analysis.
      class GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence
        include Google::Apis::Core::Hashable
      
        # Permissions in violation.
        # Corresponds to the JSON property `permissionDetails`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails>]
        attr_accessor :permission_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permission_details = args[:permission_details] if args.key?(:permission_details)
        end
      end
      
      # Details of the permission in violation.
      class GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails
        include Google::Apis::Core::Hashable
      
        # Information about a permission.
        # Corresponds to the JSON property `permission`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPermission]
        attr_accessor :permission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permission = args[:permission] if args.key?(:permission)
        end
      end
      
      # Evidence collected from your privacy policy(s).
      class GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence
        include Google::Apis::Core::Hashable
      
        # Information about a policy fragment.
        # Corresponds to the JSON property `policyFragment`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPolicyFragment]
        attr_accessor :policy_fragment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_fragment = args[:policy_fragment] if args.key?(:policy_fragment)
        end
      end
      
      # Evidence conerning an SDK that was found in your app.
      class GoogleChecksReportV1alphaCheckSdkEvidence
        include Google::Apis::Core::Hashable
      
        # Information about an SDK.
        # Corresponds to the JSON property `sdk`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaSdk]
        attr_accessor :sdk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sdk = args[:sdk] if args.key?(:sdk)
        end
      end
      
      # Evidence concerning an SDK issue.
      class GoogleChecksReportV1alphaCheckSdkIssueEvidence
        include Google::Apis::Core::Hashable
      
        # Information about an SDK.
        # Corresponds to the JSON property `sdk`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaSdk]
        attr_accessor :sdk
      
        # The SDK version.
        # Corresponds to the JSON property `sdkVersion`
        # @return [String]
        attr_accessor :sdk_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sdk = args[:sdk] if args.key?(:sdk)
          @sdk_version = args[:sdk_version] if args.key?(:sdk_version)
        end
      end
      
      # Evidence collected from SDK restriction violation analysis.
      class GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence
        include Google::Apis::Core::Hashable
      
        # SDKs in violation.
        # Corresponds to the JSON property `sdkDetails`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails>]
        attr_accessor :sdk_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sdk_details = args[:sdk_details] if args.key?(:sdk_details)
        end
      end
      
      # Details of the SDK in violation.
      class GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails
        include Google::Apis::Core::Hashable
      
        # Information about an SDK.
        # Corresponds to the JSON property `sdk`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaSdk]
        attr_accessor :sdk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sdk = args[:sdk] if args.key?(:sdk)
        end
      end
      
      # Additional information about the check state in relation to past reports.
      class GoogleChecksReportV1alphaCheckStateMetadata
        include Google::Apis::Core::Hashable
      
        # Indicators related to the check state.
        # Corresponds to the JSON property `badges`
        # @return [Array<String>]
        attr_accessor :badges
      
        # The time when the check first started failing.
        # Corresponds to the JSON property `firstFailingTime`
        # @return [String]
        attr_accessor :first_failing_time
      
        # The last time the check failed.
        # Corresponds to the JSON property `lastFailingTime`
        # @return [String]
        attr_accessor :last_failing_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @badges = args[:badges] if args.key?(:badges)
          @first_failing_time = args[:first_failing_time] if args.key?(:first_failing_time)
          @last_failing_time = args[:last_failing_time] if args.key?(:last_failing_time)
        end
      end
      
      # Represents the data monitoring section of the report.
      class GoogleChecksReportV1alphaDataMonitoring
        include Google::Apis::Core::Hashable
      
        # Data types that your app shares or collects.
        # Corresponds to the JSON property `dataTypes`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringDataTypeResult>]
        attr_accessor :data_types
      
        # Endpoints that were found by dynamic analysis of your app.
        # Corresponds to the JSON property `endpoints`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringEndpointResult>]
        attr_accessor :endpoints
      
        # Permissions that your app uses.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringPermissionResult>]
        attr_accessor :permissions
      
        # SDKs that your app uses.
        # Corresponds to the JSON property `sdks`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringSdkResult>]
        attr_accessor :sdks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_types = args[:data_types] if args.key?(:data_types)
          @endpoints = args[:endpoints] if args.key?(:endpoints)
          @permissions = args[:permissions] if args.key?(:permissions)
          @sdks = args[:sdks] if args.key?(:sdks)
        end
      end
      
      # Information about a data type that was found in your app.
      class GoogleChecksReportV1alphaDataMonitoringDataTypeResult
        include Google::Apis::Core::Hashable
      
        # The data type that was shared or collected by your app.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Evidence collected about a data type.
        # Corresponds to the JSON property `dataTypeEvidence`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypeEvidence]
        attr_accessor :data_type_evidence
      
        # Information about a data monitoring result.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringResultMetadata]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @data_type_evidence = args[:data_type_evidence] if args.key?(:data_type_evidence)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # Information about an endpoint that was contacted by your app.
      class GoogleChecksReportV1alphaDataMonitoringEndpointResult
        include Google::Apis::Core::Hashable
      
        # Information about an endpoint.
        # Corresponds to the JSON property `endpoint`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaEndpoint]
        attr_accessor :endpoint
      
        # The number of times this endpoint was contacted by your app.
        # Corresponds to the JSON property `hitCount`
        # @return [Fixnum]
        attr_accessor :hit_count
      
        # Information about a data monitoring result.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringResultMetadata]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @hit_count = args[:hit_count] if args.key?(:hit_count)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # Information about a permission that was found in your app.
      class GoogleChecksReportV1alphaDataMonitoringPermissionResult
        include Google::Apis::Core::Hashable
      
        # Information about a data monitoring result.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringResultMetadata]
        attr_accessor :metadata
      
        # Information about a permission.
        # Corresponds to the JSON property `permission`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPermission]
        attr_accessor :permission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @permission = args[:permission] if args.key?(:permission)
        end
      end
      
      # Information about a data monitoring result.
      class GoogleChecksReportV1alphaDataMonitoringResultMetadata
        include Google::Apis::Core::Hashable
      
        # Badges that apply to this result.
        # Corresponds to the JSON property `badges`
        # @return [Array<String>]
        attr_accessor :badges
      
        # The timestamp when this result was first detected within the last 8 weeks. If
        # not set, it wasn't detected within the last 8 weeks.
        # Corresponds to the JSON property `firstDetectedTime`
        # @return [String]
        attr_accessor :first_detected_time
      
        # Your app's version name when this result was last detected within the last 8
        # weeks. If not set, it wasn't detected within the last 8 weeks.
        # Corresponds to the JSON property `lastDetectedAppVersion`
        # @return [String]
        attr_accessor :last_detected_app_version
      
        # The timestamp when this result was last detected within the last 8 weeks. If
        # not set, it wasn't detected within the last 8 weeks.
        # Corresponds to the JSON property `lastDetectedTime`
        # @return [String]
        attr_accessor :last_detected_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @badges = args[:badges] if args.key?(:badges)
          @first_detected_time = args[:first_detected_time] if args.key?(:first_detected_time)
          @last_detected_app_version = args[:last_detected_app_version] if args.key?(:last_detected_app_version)
          @last_detected_time = args[:last_detected_time] if args.key?(:last_detected_time)
        end
      end
      
      # Information about an SDK that was found in your app.
      class GoogleChecksReportV1alphaDataMonitoringSdkResult
        include Google::Apis::Core::Hashable
      
        # Information about a data monitoring result.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringResultMetadata]
        attr_accessor :metadata
      
        # Information about an SDK.
        # Corresponds to the JSON property `sdk`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaSdk]
        attr_accessor :sdk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @sdk = args[:sdk] if args.key?(:sdk)
        end
      end
      
      # Evidence based on an endpoint that data was sent to.
      class GoogleChecksReportV1alphaDataTypeEndpointEvidence
        include Google::Apis::Core::Hashable
      
        # Set of SDKs that are attributed to the exfiltration.
        # Corresponds to the JSON property `attributedSdks`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk>]
        attr_accessor :attributed_sdks
      
        # Endpoints the data type was sent to.
        # Corresponds to the JSON property `endpointDetails`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails>]
        attr_accessor :endpoint_details
      
        # Type of data that was exfiltrated.
        # Corresponds to the JSON property `exfiltratedDataType`
        # @return [String]
        attr_accessor :exfiltrated_data_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributed_sdks = args[:attributed_sdks] if args.key?(:attributed_sdks)
          @endpoint_details = args[:endpoint_details] if args.key?(:endpoint_details)
          @exfiltrated_data_type = args[:exfiltrated_data_type] if args.key?(:exfiltrated_data_type)
        end
      end
      
      # Details of SDK that is attributed to the exfiltration.
      class GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk
        include Google::Apis::Core::Hashable
      
        # Information about an SDK.
        # Corresponds to the JSON property `sdk`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaSdk]
        attr_accessor :sdk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sdk = args[:sdk] if args.key?(:sdk)
        end
      end
      
      # Details of the endpoint the data type was sent to.
      class GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails
        include Google::Apis::Core::Hashable
      
        # Information about an endpoint.
        # Corresponds to the JSON property `endpoint`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaEndpoint]
        attr_accessor :endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
        end
      end
      
      # Evidence collected about a data type.
      class GoogleChecksReportV1alphaDataTypeEvidence
        include Google::Apis::Core::Hashable
      
        # List of endpoints the data type was sent to.
        # Corresponds to the JSON property `endpoints`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypeEndpointEvidence>]
        attr_accessor :endpoints
      
        # List of included permissions that imply collection of the data type.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypePermissionEvidence>]
        attr_accessor :permissions
      
        # List of privacy policy texts that imply collection of the data type.
        # Corresponds to the JSON property `privacyPolicyTexts`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence>]
        attr_accessor :privacy_policy_texts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoints = args[:endpoints] if args.key?(:endpoints)
          @permissions = args[:permissions] if args.key?(:permissions)
          @privacy_policy_texts = args[:privacy_policy_texts] if args.key?(:privacy_policy_texts)
        end
      end
      
      # Evidence based on the inclusion of a permission.
      class GoogleChecksReportV1alphaDataTypePermissionEvidence
        include Google::Apis::Core::Hashable
      
        # Information about a permission.
        # Corresponds to the JSON property `permission`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPermission]
        attr_accessor :permission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permission = args[:permission] if args.key?(:permission)
        end
      end
      
      # Evidence based on information from the privacy policy.
      class GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence
        include Google::Apis::Core::Hashable
      
        # Information about a policy fragment.
        # Corresponds to the JSON property `policyFragment`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPolicyFragment]
        attr_accessor :policy_fragment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_fragment = args[:policy_fragment] if args.key?(:policy_fragment)
        end
      end
      
      # Information about an endpoint.
      class GoogleChecksReportV1alphaEndpoint
        include Google::Apis::Core::Hashable
      
        # Domain name (e.g. ads.google.com).
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
        end
      end
      
      # The response message for ReportService.ListReports.
      class GoogleChecksReportV1alphaListReportsResponse
        include Google::Apis::Core::Hashable
      
        # A token which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The reports for the specified app.
        # Corresponds to the JSON property `reports`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaReport>]
        attr_accessor :reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reports = args[:reports] if args.key?(:reports)
        end
      end
      
      # Information about a permission.
      class GoogleChecksReportV1alphaPermission
        include Google::Apis::Core::Hashable
      
        # Permission identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Information about a policy fragment.
      class GoogleChecksReportV1alphaPolicyFragment
        include Google::Apis::Core::Hashable
      
        # HTML content.
        # Corresponds to the JSON property `htmlContent`
        # @return [String]
        attr_accessor :html_content
      
        # Policy URL.
        # Corresponds to the JSON property `sourceUri`
        # @return [String]
        attr_accessor :source_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @html_content = args[:html_content] if args.key?(:html_content)
          @source_uri = args[:source_uri] if args.key?(:source_uri)
        end
      end
      
      # Privacy report.
      class GoogleChecksReportV1alphaReport
        include Google::Apis::Core::Hashable
      
        # Information about the analyzed app bundle.
        # Corresponds to the JSON property `appBundle`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaAppBundle]
        attr_accessor :app_bundle
      
        # List of checks that were run on the app bundle.
        # Corresponds to the JSON property `checks`
        # @return [Array<Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheck>]
        attr_accessor :checks
      
        # Represents the data monitoring section of the report.
        # Corresponds to the JSON property `dataMonitoring`
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoring]
        attr_accessor :data_monitoring
      
        # Resource name of the report.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A URL to view results.
        # Corresponds to the JSON property `resultsUri`
        # @return [String]
        attr_accessor :results_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_bundle = args[:app_bundle] if args.key?(:app_bundle)
          @checks = args[:checks] if args.key?(:checks)
          @data_monitoring = args[:data_monitoring] if args.key?(:data_monitoring)
          @name = args[:name] if args.key?(:name)
          @results_uri = args[:results_uri] if args.key?(:results_uri)
        end
      end
      
      # Information about an SDK.
      class GoogleChecksReportV1alphaSdk
        include Google::Apis::Core::Hashable
      
        # SDK identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ChecksV1alpha::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ChecksV1alpha::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # The request message for Operations.WaitOperation.
      class WaitOperationRequest
        include Google::Apis::Core::Hashable
      
        # The maximum duration to wait before timing out. If left blank, the wait will
        # be at most the time permitted by the underlying HTTP/RPC protocol. If RPC
        # context deadline is also specified, the shorter one will be used.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @timeout = args[:timeout] if args.key?(:timeout)
        end
      end
    end
  end
end
